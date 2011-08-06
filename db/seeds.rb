# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


dir = File.expand_path('../../old_notes',__FILE__)
Dir.glob(dir+'/*').each do |path|
  time = path.split(' ')[0].split('/')[-1]
  title = path.split(' ')[1..-1].join(' ')
  file = File.open(path,"r")
  Note.create(body:file.read,title:title,created_at:Time.at(time.to_i))
end