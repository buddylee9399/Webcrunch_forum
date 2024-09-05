json.extract! reply, :id, :reply, :discussion_id, :user_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
