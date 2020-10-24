class CoverLettersController < ApplicationController
	def create
		user = @current_user
		
		if cover_letter = CoverLetter.find_by(title: params[:title])
			binding.pry
			cover_letter.update(body: params[:body])
		else
			binding.pry
			cover_letter = CoverLetter.new(cover_letter_params)
			cover_letter.user = user
			if cover_letter.save
				render json: {status: "saved"}
			end			
		end
	end

	def search
		search_term = params[:search_term]
		user = @current_user
		search_matches = []
		CoverLetter.where(user: user).all.each do |cover_letter|
			sentence_array = cover_letter.body.split(/[.?!\n]/)
			sentence_array.each do |sentence|
				if sentence.include?(search_term)
					search_matches << sentence.squish
				end
			end
		end
		# binding.pry
		render json: {matches: search_matches.uniq}
	end


	private

	def cover_letter_params
		params.require(:cover_letter).permit(:title, :body)
	end
end
