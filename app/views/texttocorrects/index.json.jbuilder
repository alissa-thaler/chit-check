json.array!(@texttocorrects) do |texttocorrect|
  json.extract! texttocorrect, :id, :language, :duedate, :description
  json.url texttocorrect_url(texttocorrect, format: :json)
end
