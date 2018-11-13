# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title:"Top #{blog} Reasons to listen to Scott Steiner",
    body:"You know, they say all men are created equal, but you look at me and you look at Samoa Joe, and you can see that statement is not true! See, normally if you go one on one with another wrestler, you got a 50/50 chance of winning. But I'm a genetic freak, and I'm not normal, so you got a 25% at best at beating me! And then you add Kurt Angle to the mix? Your chances of winning drastic go down. See the three way, at Sacrifice, you got a 33 1/3 chance of winning. But I, I got a 66 2/3 chance of winning, cause Kurt Angle knows he can't beat me, and he's not even gonna try! So, Samoa Joe, you take your 33 1/3 chance, minus my 25 percent chance, and you got an 8 1/3 chance of winning at Sacrifice! But then you take my 75 percent chance at winning, if we was to go one on one, and to add 66 2/3 chance percents, I got a 141 2/3 chance of winning at Sacrifice!",
    topic_id: Topic.last.id,
    age: blog
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
      title: "Rails #{skill}",
      percent_utilised: 15
  )
end

puts "5 skills created"

8.times do | portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "The service you deserve",
    body: "Lorem ipsum Saskatchewan DDT sit amet, consectetur Russian cloverleaf elit. Nullam dignissim Saskatchewan moonsault dui, et moss-covered arm bar mauris Russian bulldog a. Class aptent taciti Saskatchewan spear ad litora torquent springboard hip toss conubia crossbody claw per inceptos himenaeos. gutwrench facebuster eget bionic hurricanrana odio. Sed tempor enim purus, Saskatchewan catapult interdum mi facilisis vitae. Maecenas imperdiet five-star facebuster in ante mollis ultrices. Nullam pumphandle corkscrew nibh ullamcorper, vulputate frog splash bulldog et, pellentesque lorem. Aenean frog splash cobra clutch nibh eros, ac tincidunt mauris bionic clothesline in.",
    main_image: "https://cdn.sescoops.com/wp-content/uploads/2018/01/njpw-australia-696x392.jpg",
    thumb_image: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/NJPW-Logo.png/200px-NJPW-Logo.png"
  )
end

1.times do | portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "The service you need right now",
    body: "Lorem ipsum Saskatchewan DDT sit amet, consectetur Russian cloverleaf elit. Nullam dignissim Saskatchewan moonsault dui, et moss-covered arm bar mauris Russian bulldog a. Class aptent taciti Saskatchewan spear ad litora torquent springboard hip toss conubia crossbody claw per inceptos himenaeos. gutwrench facebuster eget bionic hurricanrana odio. Sed tempor enim purus, Saskatchewan catapult interdum mi facilisis vitae. Maecenas imperdiet five-star facebuster in ante mollis ultrices. Nullam pumphandle corkscrew nibh ullamcorper, vulputate frog splash bulldog et, pellentesque lorem. Aenean frog splash cobra clutch nibh eros, ac tincidunt mauris bionic clothesline in.",
    main_image: "https://cdn.sescoops.com/wp-content/uploads/2018/01/njpw-australia-696x392.jpg",
    thumb_image: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/NJPW-Logo.png/200px-NJPW-Logo.png"
  )
end

puts "9 portfolio items created"

3.times do |tech|
  Technology.create!(
    name: "Technology #{tech}",
    portfolio_id: Portfolio.last.id
  )
end

puts "3 technologies created"
