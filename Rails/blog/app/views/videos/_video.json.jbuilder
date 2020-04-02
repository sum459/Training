json.extract! video, :id, :title, :length, :viewing, :created_at, :updated_at
json.url video_url(video, format: :json)
