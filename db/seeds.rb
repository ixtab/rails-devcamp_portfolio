 3.times do |topic|
    Topic.create!(
      title: "Topic #{topic +1}"
    )
 end
 puts "3 Topcs created"

10.times do |blog|
  Blog.create!(
    title: "#{blog + 1}- Lorem ipsum non fugiat aliqua.",
    body: "Qui sit ea incididunt laboris excepteur nostrud mollit commodo veniam exercitation minim amet nisi aliquip est nisi amet amet incididunt duis fugiat incididunt officia excepteur cupidatat in in occaecat occaecat aliqua nulla dolor irure aute voluptate pariatur dolore magna magna duis magna nisi cupidatat nisi commodo quis pariatur id in voluptate ex tempor eiusmod ad minim pariatur id qui in aliqua dolore proident dolore eu velit laboris ea deserunt enim consectetur nulla quis velit do do sint fugiat minim voluptate id minim occaecat aliquip adipisicing do ea ut dolor id sint quis ullamco aliqua ea in excepteur cupidatat occaecat in sit adipisicing aliquip duis esse magna officia pariatur adipisicing amet qui anim ut reprehenderit dolore dolore id quis reprehenderit non excepteur est excepteur dolor dolor incididunt ullamco do dolore culpa occaecat commodo sed ut nisi quis fugiat nostrud sit fugiat tempor velit excepteur laborum dolor deserunt quis duis elit qui consequat exercitation commodo amet cillum ut dolore qui proident eiusmod nisi ut enim culpa cillum proident labore minim commodo ullamco adipisicing excepteur aute veniam nostrud ullamco dolore magna officia anim pariatur aliqua velit officia aliquip exercitation fugiat eu velit excepteur commodo nisi duis excepteur officia veniam cupidatat consequat tempor qui non laboris incididunt laborum reprehenderit laborum dolor ut sunt amet incididunt nulla et aliqua aliqua ut non veniam ullamco ullamco sit qui officia ut enim magna non cupidatat duis velit officia esse veniam laborum laboris elit sunt sunt ullamco laborum ut eiusmod in irure adipisicing reprehenderit ut duis.",
    topic_id: Topic.last.id
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

8.times do |portfolio_item|
  Portfolio.create!(
    title: "#{portfolio_item + 1}- Ad quis cillum labore.",
    subtitle: "Ruby on Rails",
    body: "Ad culpa sed excepteur cillum do mollit in mollit proident est magna in nisi aliquip proident magna adipisicing do irure ad sit ea sunt sint pariatur elit culpa sed nulla velit exercitation nostrud elit dolore est dolor in do enim labore sunt est veniam ea deserunt est nostrud nulla qui dolore irure aliquip nisi cillum amet proident veniam veniam irure adipisicing est ea cupidatat nulla exercitation ex est irure id veniam eu id qui id deserunt nostrud sunt dolor dolor reprehenderit culpa eu eiusmod occaecat minim dolore sed ut reprehenderit tempor elit enim anim laboris proident exercitation enim dolore tempor sit excepteur anim dolore sed ex nulla mollit officia ut pariatur dolor enim enim dolor tempor labore ut aute eiusmod commodo et voluptate proident mollit ea consequat officia deserunt eiusmod reprehenderit in consectetur pariatur fugiat adipisicing qui quis non veniam velit id eiusmod aute incididunt consectetur officia fugiat aute eiusmod dolor aute occaecat aute laborum et exercitation ad qui dolor sit duis nulla consequat sed minim laborum in sint laborum dolore duis laborum do sunt ut id labore dolor ea ut eu excepteur nostrud sed cupidatat culpa enim nulla in dolore amet in duis ex proident reprehenderit anim in ullamco commodo ad aute laborum minim cupidatat ea occaecat laborum sint sint do cupidatat amet esse do adipisicing enim ut laborum nostrud sed dolore nostrud elit sit ut duis quis deserunt excepteur fugiat velit pariatur commodo sit reprehenderit mollit laborum laboris do quis deserunt anim reprehenderit fugiat ea cillum commodo tempor laborum proident voluptate ut in ad exercitation non fugiat voluptate.",
    main_image:"http://placehold.it/600x400",
    thumb_image: "http://placehold.it/300x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "#{portfolio_item + 1}- Ad quis cillum labore.",
    subtitle: "Angular",
    body: "Ad culpa sed excepteur cillum do mollit in mollit proident est magna in nisi aliquip proident magna adipisicing do irure ad sit ea sunt sint pariatur elit culpa sed nulla velit exercitation nostrud elit dolore est dolor in do enim labore sunt est veniam ea deserunt est nostrud nulla qui dolore irure aliquip nisi cillum amet proident veniam veniam irure adipisicing est ea cupidatat nulla exercitation ex est irure id veniam eu id qui id deserunt nostrud sunt dolor dolor reprehenderit culpa eu eiusmod occaecat minim dolore sed ut reprehenderit tempor elit enim anim laboris proident exercitation enim dolore tempor sit excepteur anim dolore sed ex nulla mollit officia ut pariatur dolor enim enim dolor tempor labore ut aute eiusmod commodo et voluptate proident mollit ea consequat officia deserunt eiusmod reprehenderit in consectetur pariatur fugiat adipisicing qui quis non veniam velit id eiusmod aute incididunt consectetur officia fugiat aute eiusmod dolor.",
    main_image:"http://placehold.it/600x400",
    thumb_image: "http://placehold.it/300x200"
    )
end
puts "9 Portfolio items created"
