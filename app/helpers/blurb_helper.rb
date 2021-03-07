require "spreadsheet"

module BlurbHelper
	def import_blurbs
		binding.pry
		book = Spreadsheet.open 'company_culture_blurbs.xls'
		sheet1 = book.worksheet 0 
		sheet1.each.with_index(1) do |row, index|
			company_name = sheet1.row(index)[0]
			blurb = sheet1.row(index)[1]
			link = sheet1.row(index)[2]
			puts "digesting #{company_name}"
			if company = Company.find_by(name: company_name)
				company.update(blurb: blurb, link: link)
			elsif company_name
				company = Company.create(name: company_name, blurb: blurb, link: link)
			end
		end 			
	end
end