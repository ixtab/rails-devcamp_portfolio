# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Mi artículo del Blog #{blog}",
    body:"#{blog}- Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental: in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Dolore ea sint labore ut velit deserunt eu velit officia quis veniam dolor minim ullamco nulla cillum anim laboris adipisicing incididunt culpa enim nulla reprehenderit exercitation officia in magna fugiat. Lorem ipsum reprehenderit voluptate nisi reprehenderit in fugiat sunt in reprehenderit velit laboris enim et deserunt cillum dolore laboris cupidatat in minim. Adipisicing ea enim cillum non in ullamco id do aliquip dolore laborum laborum enim enim dolore ut sed quis in nostrud consectetur. Ad quis est dolor aute minim anim excepteur esse id ea laboris nulla nulla tempor ut dolor in est dolor commodo laborum culpa dolor quis veniam magna eu enim voluptate in aliqua ad consequat ea proident quis consequat est sed ea et reprehenderit in mollit ut in minim ullamco veniam exercitation sit excepteur eiusmod est magna occaecat ut ut elit proident sunt aliquip dolore pariatur duis nostrud ut irure in dolore consectetur in tempor et anim culpa dolor dolor mollit veniam sunt quis reprehenderit sint aliqua labore ea laboris enim eu ad do ea voluptate velit aliqua labore adipisicing in minim exercitation reprehenderit laboris quis in elit laborum sit sed eu sed et enim veniam culpa ut labore veniam ad enim ut adipisicing commodo laborum adipisicing consectetur culpa veniam non laboris minim commodo enim consectetur velit aliqua elit ut dolore nostrud culpa est esse in nulla proident ad et ullamco aliqua amet in occaecat sunt fugiat in voluptate fugiat adipisicing anim dolore eu ex aliqua reprehenderit quis id ut commodo adipisicing ut ut sint laborum proident culpa dolor sit ut duis in amet mollit ea cillum elit aliqua eiusmod nostrud eiusmod culpa pariatur in deserunt et ex nulla qui est tempor esse duis."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills posts created"

9.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Ex sit adipisicing velit pariatur aute enim ullamco in pariatur in amet eiusmod ut qui dolore excepteur laboris esse cupidatat non ex tempor sunt amet voluptate id quis eu minim duis sit tempor dolor laborum in ad.#{portfolio}",
    body: "#{portfolio}- Laboris ut aliquip cillum ut et proident eiusmod enim ut sed sunt exercitation in deserunt ea dolore in minim incididunt sed excepteur ea fugiat cillum amet sed mollit adipisicing labore consequat sed esse qui quis do sunt esse dolore non aliqua esse dolore ullamco voluptate fugiat ad fugiat quis dolore ex voluptate esse reprehenderit irure sed dolore laboris dolore tempor sunt esse eu tempor occaecat ex consectetur sit in labore pariatur nostrud sed est ea pariatur magna velit ex laborum do aliqua commodo laborum dolore pariatur mollit minim culpa sint aliqua proident officia eu ut officia laborum enim in ad ut sit sed in commodo excepteur sit adipisicing culpa deserunt ea eiusmod sunt nisi ea ut et eiusmod nostrud sunt aliquip fugiat tempor aute sint amet culpa aliquip aute laborum incididunt in ut culpa ut mollit nostrud laborum non dolor amet quis id in elit ut laboris elit consectetur minim fugiat sunt excepteur excepteur mollit et ut dolore veniam cillum laborum dolore labore magna velit cillum nulla fugiat dolore tempor nulla duis aliquip irure aliquip minim magna ad enim minim laborum proident in non magna ut qui exercitation esse deserunt eiusmod magna anim reprehenderit proident sed amet dolor pariatur ea est sed ex tempor voluptate et minim deserunt consectetur dolor aliqua adipisicing consectetur eu enim ut nostrud dolor sint labore mollit laborum sit.",
    main_image: "http://placehold.it/600x450",
    thumb_image: "http://placehold.it/300x225"
  )
end

puts "9 portfolio items created"