json.array!(@dog_expenses) do |dog_expense|
  json.extract! dog_expense, :dog_id, :charge_id, :charge_date, :amount, :note
  json.url dog_expense_url(dog_expense, format: :json)
end
