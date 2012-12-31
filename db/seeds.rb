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
    u.email = "shohei.sasamoto+user_#{i}@gmail.com"
    u.password = "userpass"
    u.password_confirmation = "userpass"
  end
end
