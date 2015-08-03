json.array!(@invitations) do |invitation|
  json.extract! invitation, :id, :email, :message
  json.url invitation_url(invitation, format: :json)
end
