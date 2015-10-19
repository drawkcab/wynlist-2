json.array!(@logos) do |logo|
  json.extract! logo, :id, :url, :description, :companyID, :company_id
  json.url logo_url(logo, format: :json)
end
