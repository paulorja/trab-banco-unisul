json.extract! account_operation, :id, :account_id, :person_id, :amount, :tipo, :created_at, :updated_at
json.url account_operation_url(account_operation, format: :json)