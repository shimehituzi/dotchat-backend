# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(部屋 テスト EIC room ROOM へや).each do |room_name|
  Room.create(name: room_name)
  room = Room.find_by(name: room_name)
  10.times do |i|
    string = ""
    81.times do
      string << "#{rand(5)}"
    end
    Comment.create(
      room_id: room.id,
      text: string
    )
  end
end
