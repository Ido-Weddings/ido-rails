json.array!(@enterprises) do |enterprise|
  json.extract! enterprise, :id, :name, :description, :capacity, :telephone, :cellphone, :address, :base_price. :email,
  :password, :password_confirmation
  json.url enterprise_url(enterprise, format: :json)
end
