json.array!(@worklogs) do |worklog|
  json.extract! worklog, :id, :date, :location, :public, :private, :notes
  json.url worklog_url(worklog, format: :json)
end
