Factory.define :messenger do |m|
  m.name "Phil"
  m.checked_in DateTime.now.beginning_of_day
  m.association :user, :factory => :user
end