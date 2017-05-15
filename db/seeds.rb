# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title: "#{blog + 1}- Lorem ipsum non fugiat aliqua.",
    body: "Qui sit ea incididunt laboris excepteur nostrud mollit commodo veniam exercitation minim amet nisi aliquip est nisi amet amet incididunt duis fugiat incididunt officia excepteur cupidatat in in occaecat occaecat aliqua nulla dolor irure aute voluptate pariatur dolore magna magna duis magna nisi cupidatat nisi commodo quis pariatur id in voluptate ex tempor eiusmod ad minim pariatur id qui in aliqua dolore proident dolore eu velit laboris ea deserunt enim consectetur nulla quis velit do do sint fugiat minim voluptate id minim occaecat aliquip adipisicing do ea ut dolor id sint quis ullamco aliqua ea in excepteur cupidatat occaecat in sit adipisicing aliquip duis esse magna officia pariatur adipisicing amet qui anim ut reprehenderit dolore dolore id quis reprehenderit non excepteur est excepteur dolor dolor incididunt ullamco do dolore culpa occaecat commodo sed ut nisi quis fugiat nostrud sit fugiat tempor velit excepteur laborum dolor deserunt quis duis elit qui consequat exercitation commodo amet cillum ut dolore qui proident eiusmod nisi ut enim culpa cillum proident labore minim commodo ullamco adipisicing excepteur aute veniam nostrud ullamco dolore magna officia anim pariatur aliqua velit officia aliquip exercitation fugiat eu velit excepteur commodo nisi duis excepteur officia veniam cupidatat consequat tempor qui non laboris incididunt laborum reprehenderit laborum dolor ut sunt amet incididunt nulla et aliqua aliqua ut non veniam ullamco ullamco sit qui officia ut enim magna non cupidatat duis velit officia esse veniam laborum laboris elit sunt sunt ullamco laborum ut eiusmod in irure adipisicing reprehenderit ut duis."
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails skill #{skill+6}",
    percent_utilized: 20
    )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "#{portfolio_item + 1}- Ad quis cillum labore.",
    subtitle: "#{portfolio_item + 1}- Excepteur est ea elit ad veniam laborum ullamco est culpa duis culpa duis irure.",
    main_image:"http://placehold.it/600x400",
    thumb_image: "http://placehold.it/300x200"
    )
end
puts "9 Portfolio items created"
