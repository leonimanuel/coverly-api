require "spreadsheet"

module BlurbHelper #run from console with: ApplicationController.helpers.import_blurbs
	def import_blurbs
		book = Spreadsheet.open 'company_culture_blurbs.xls'
		sheet1 = book.worksheet 0 
		sheet1.each.with_index(1) do |row, index|
			company_name = sheet1.row(index)[0]
			blurb = sheet1.row(index)[1]
			link = sheet1.row(index)[2]
			keywords = sheet1.row(index)[4]
			puts "digesting #{company_name}"
			puts "keywords: #{keywords}"
			# binding.pry
			# company = ""
			
			company = ""
			if company = Company.find_by(name: company_name)
				company.update(blurb: blurb, link: link, public: true)
			elsif company_name
				company = Company.create(name: company_name, blurb: blurb, link: link, public: true)
			end
			
			if keywords
				industry = Industry.find_by(name: "General")
				keywords_array = keywords.split(", ")
				keywords_array.each do |kw|
					keyword = ""
					if Keyword.find_by(lower_case: kw.downcase)		
						keyword = Keyword.find_by(lower_case: kw.downcase)
					else
						keyword = Keyword.create(name: kw, lower_case: kw.downcase)
						keyword.industries << industry
					end
					if company.keywords.where(id: keyword.id).empty?
						company.keywords << keyword							
					end
				end				
			end
		end 			
	end
end