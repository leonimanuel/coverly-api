require "spreadsheet"

class ApplicationController < ActionController::API
 	before_action :authenticate_request
  attr_reader :current_user

	include ActionController::Helpers
  helper BlurbHelper
  def test
  	ApplicationController.helpers.import_blurbs
		# book = Spreadsheet.open 'company_culture_blurbs.xls'
		# sheet1 = book.worksheet 0 
		# sheet1.each.with_index(1) do |row, index|
		# 	company_name = sheet1.row(index)[0]
		# 	blurb = sheet1.row(index)[1]
		# 	link = sheet1.row(index)[2]

		# 	if company = Company.find_by(name: company_name)
		# 		company.update(blurb: blurb, link: link)
		# 	else
		# 		company = Company.create(name: company_name, blurb: blurb, link: link)
		# 	end
		# end 	
  	# binding.pry
  	render json: {status: "success"}
  end


  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
