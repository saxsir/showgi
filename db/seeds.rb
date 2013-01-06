# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

# rake db:seed で読み込み

# ダミーデータ登録
## User
User.delete_all
User.connection.execute("delete from sqlite_sequence where name='users'")

10.times do |i|
  User.create! do |u|
    # user_1 ~ user_10
    u.email = "shohei.sasamoto+user_#{i + 1}@gmail.com"
    u.password = "userpass"
    u.password_confirmation = "userpass"
  end
end

## Rate
Rate.delete_all
Rate.connection.execute("delete from sqlite_sequence where name='rates'");

10.times do |i|
  Rate.create! do |r|
    r.user_id = i + 1
    r.kifu_id = rand(4) + 1
    r.rate = rand(5) + 1
  end
end

## Favorite
Favorite.delete_all
Favorite.connection.execute("delete from sqlite_sequence where name='favorites'");

10.times do |i|
  Favorite.create! do |f|
    f.user_id = i + 1
    f.kifu_id = rand(4) + 1 #1~4
  end
end



