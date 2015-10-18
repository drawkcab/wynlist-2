json.array!(@companies) do |company|
  json.extract! company, :id, :name, :street, :zip, :city, :state, :phone, :description, :service
  json.url company_url(company, format: :json)
end
