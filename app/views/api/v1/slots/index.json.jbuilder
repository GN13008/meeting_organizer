json.array! @slots do |slot|
  json.extract! slot, :id, :date, :time_slot
end