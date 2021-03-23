class CoverLettersController < ApplicationController
	def create
		user = @current_user
		# if it's an existing cover letter
		# binding.pry
		if params[:id] 
			cover_letter = CoverLetter.find(params[:id])

			# If it's an existing cover letter with a name change to another existing cover letter. Unlikely but you never know
			if cover_letter.name != params[:name] && CoverLetter.find_by(name: params[:name])
				if params[:replace] == true
					old_cover_letter = CoverLetter.find_by(name: params[:name])
					old_cover_letter.destroy

					cover_letter = CoverLetter.new(cover_letter_params)
					cover_letter.user = user
					if cover_letter.save
						render json: {id: cover_letter.id, name: cover_letter.name, saved_at: Time.now.strftime("%F %T")}
					end 
				else
					render json: {duplicate: "true"}
				end
			
			# if user changed the name of an existing cover letter
			elsif params[:name] != cover_letter.name
				if params[:newVersion] == false
					render json: {new_version: "true"}
				else #if user said it's "OK" to create a new cover letter with the new name
					cover_letter = CoverLetter.new(cover_letter_params)
					cover_letter.user = user
					if cover_letter.save
						render json: {id: cover_letter.id, name: cover_letter.name, saved_at: Time.now.strftime("%F %T")}
					end					
				end	
			else
				if cover_letter.update(cover_letter_params)
					render json: {id: cover_letter.id, saved_at: Time.now.strftime("%F %T")}
				end
			end
			
		# If it's a new cover letter with same name as existing
		elsif CoverLetter.find_by(name: params[:name])
			if params[:replace] == true
				old_cover_letter = CoverLetter.find_by(name: params[:name])
				old_cover_letter.destroy

				cover_letter = CoverLetter.new(cover_letter_params)
				cover_letter.user = user
				if cover_letter.save
					render json: {id: cover_letter.id, name: cover_letter.name, saved_at: Time.now.strftime("%F %T")}
				end 
			else
				render json: {duplicate: "true"}
			end
		
		# If it's a new cover letter with a new name
		else
			cover_letter = CoverLetter.new(
				name: params[:name],
				body: params[:body],
				company: params[:company],
				position: params[:position],
				user: user
			)
			cover_letter.user = user
			if cover_letter.save
				render json: {id: cover_letter.id, name: cover_letter.name, saved_at: Time.now.strftime("%F %T")}
			end			
		end
	end

	def show
		user = @current_user
		cover_letter = CoverLetter.find(params[:id])
		render json: cover_letter
	end

	def index
		# binding.pry
		user = @current_user
		render json: user 
	end

	def search
		search_term = params[:search_term]
		user = @current_user
		search_matches = []
		CoverLetter.where(user: user).all.each do |cover_letter|
			sentence_array = cover_letter.body.split(/[.?!\n]/)
			sentence_array.each do |sentence|
				downcase_sentence = sentence.downcase
				if downcase_sentence.match(/\b#{search_term.downcase}\b/)
					search_matches << {phrase: sentence.squish, name: cover_letter.name}
				end
			end
		end
		# binding.pry
		render json: {matches: search_matches.uniq}
	end


	private

	def cover_letter_params
		params.require(:cover_letter).permit(:id, :name, :body, :company, :position)
	end
end
