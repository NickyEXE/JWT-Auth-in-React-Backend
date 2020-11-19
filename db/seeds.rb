# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


freddy = User.create(username: "1NiteAtFreddys", password: "123")
mike = User.create(username: "NotThatMikeMyers", password: "123")

random = Channel.create(name: "random")
murder = Channel.create(name: "my-favorite-murder")

freddy.messages.create(content: "Starting a new movie where I kill a bunch of coding school students. Calling it Freddy vs. JSON", channel: murder)
freddy.messages.create(content: "Honestly I've found everyone's nightmares are bad enough without my help today.", channel: random)
mike.messages.create(content: "Freddy curses too much for my taste.", channel: random)
mike.messages.create(content: "Currently working my way through 'The Babysitters Club'", channel: murder)
freddy.messages.create(content: "I don't think people get that I have dreams too, you know?", channel: random)
