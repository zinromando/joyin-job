# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Hello World!'
puts '这个种子档会自动建立一个账号，并随机创建10个activities，10个隐藏的activities'

create_account = User.create([email: 'admin@joyin.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account created.'

activity_info = [
  'RoR meet-up',
  'Hackerthon黑客松',
  '现在是跳槽的好机会么？-职场听你说',
  '编程/潜水/金融，与跨界达人面对面',
  '无处释放压力？来学做菜吧！',
  '北欧四国七天六夜，一起边玩边学',
  '学习也是社交，听听李笑来',
  '什么是全栈工程师？XDite大神的分享',
  '百度年会，对外开放20个名额',
  '前腾讯创业团队，每月分享会'
]

create_activities = for i in 1..10 do
                      Activity.create!([subject: activity_info[rand(activity_info.length)], description: '这是一个公开的活动', field: '跨界分享活动', fee: '100', location: '北京', contact_email: 'admin@joyin.com', is_hidden: 'false'])
  end

for i in 1..10 do
  Activity.create!([subject: activity_info[rand(activity_info.length)], description: '这是一个隐藏的活动', field: '跨界分享活动', fee: '100', location: '北京', contact_email: 'admin@joyin.com', is_hidden: 'true'])
end

puts '10 Public activities created.'
puts '10 Hidden activities created.'
