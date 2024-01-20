# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


5.times do |i|
    User.create!(email: "motoki_#{i}@hmail.com", password: "password_#{i}" , created_at: Time.current, updated_at: Time.current)
end

User.all.each do |user|
    2.times do |i|
        user.stores.create!(store_name: "本棚_#{i}", store_type: i, created_at: Time.current, updated_at: Time.current)
    end
end

Store.all.each do |store|
    5.times do |i|
        store.contents.create!(content_name: "本の題名_#{i}", content_type: 1, author_name: "著者名_#{i}", publisher_name: "出版社名_#{i}", published_at: Time.current, translator_name: "翻訳者名_#{i}", created_at: Time.current, updated_at: Time.current)
    end
end