json.array!(@works) do |work|
  json.extract! work, :id, :title, :description, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
  json.url work_url(work, format: :json)
end
