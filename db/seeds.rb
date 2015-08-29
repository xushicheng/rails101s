# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Hello World!"
puts "这个种子档案会自动建立一个账号,并且创建20个 groups, 每个 group 各有30个 posts."

create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', name: '测试用账号'])

create_groups = for i in 1..20 do
  Group.create!([title: "Group no.#{i}", description: "这是用种子建立的第 #{i} 个讨论版", user_id: "1"])
  for k in 1..30 do
    Post.create!([group_id: "#{i}",content: "这是用种子建立的第 #{k} 个留言", user_id: "1"])
  end
end
