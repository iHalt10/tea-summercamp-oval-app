# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


News.find_or_create_by( sessionID: "0000000", title: 'Yahoo!ニュース・トピックス - 主要', link: 'https://news.yahoo.co.jp/', putDate: '2000-01-01 00:00:00')