# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
end_users = EndUser.create!(
  [
    {email: 'aaa@test.com', screen_name: 'tuda0405', name: '津田雅史', password: '060530', birth_day: '1990-04-05', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")},
    {email: 'bbb@test.com', screen_name: 'xxxyumixxx', name: 'Yumi', password: '060530', birth_day: '1994-07-25', gender: 'female', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")},
    {email: 'ccc@test.com', screen_name: '0923tatata', name: 'TakashiTakata', password: '060530', birth_day: '1980-01-21', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")},
    {email: 'ddd@test.com', screen_name: 'mmmmayuko', name: 'mayuko', password: '060530', birth_day: '2000-06-15', gender: 'female', is_deleted: 'unsubscribe', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user4.jpg"), filename:"sample-user4.jpg")},
    {email: 'eee@test.com', screen_name: 'mitsu999owo', name: 'M', password: '060530', birth_day: '1996-10-22', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user5.jpg"), filename:"sample-user5.jpg")},
    {email: 'fff@test.com', screen_name: 'sbunsss', name: 'nanashi', password: '060530', birth_day: '1960-11-11', gender: 'male', is_deleted: 'unsubscribe', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user6.jpg"), filename:"sample-user6.jpg")},
    {email: 'ggg@test.com', screen_name: 'matsudasan', name: 'KentaMatsuda', password: '060530', birth_day: '1970-09-12', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user7.jpg"), filename:"sample-user7.jpg")},
    {email: 'hhh@test.com', screen_name: '0kanakana0', name: 'おおばかなこ', password: '060530', birth_day: '1991-04-01', gender: 'female', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user8.jpg"), filename:"sample-user8.jpg")},
    {email: 'iii@test.com', screen_name: 'suzukimaiko', name: 'MAIKO.', password: '060530', birth_day: '1964-02-22', gender: 'female', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user9.jpg"), filename:"sample-user9.jpg")},
    {email: 'jjj@test.com', screen_name: 'sachio380', name: '加藤幸男', password: '060530', birth_day: '1960-12-03', gender: 'male', is_deleted: 'member', internet_protocol_address: '14.13.9.97',  profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user10.jpg"), filename:"sample-user10.jpg")}
  ]
)