json.extract! ty_note, :id, :gifter_id, :first_name, :last_name, :subject, :body, :created_at, :updated_at
json.url ty_note_url(ty_note, format: :json)
