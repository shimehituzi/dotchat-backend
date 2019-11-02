# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Room.create([{name: 'seed'}, {name: 'test'}, {name: '初心者'}])

%w(seed test 初心者).each do |room_name|
  room = Room.find_by(name: room_name)
  10.times do |i|
    Comment.create(
      room_id: room.id,
      text: "#{i}番目のコメントです"
    )
  end
end
