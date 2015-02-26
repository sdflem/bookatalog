# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.create(first_name: 'Ayn',
              last_name: 'Rand',
              year: 1905,
              profile: AuthorProfile.create(birthplace: 'Saint Petersburg',
                                            bio: 'Rand was born...',
                                            awards: 'Prometheus Awards, ...'),
              books: Book.create([
                {title: 'The Fountainhead', year: 1943, summary: 'Individualistic architect...'},
                {title: 'Atlas Shrugged', year: 1957, summary: 'Dystopian USA...'}
              ]))

Author.create(first_name: 'Peter',
              last_name: 'Benchley',
              year: 1940,
              profile: AuthorProfile.create(birthplace: 'New York City',
                                            bio: 'He was the son of...',
                                            awards: 'Shark Conservation, ...'),
              books: Book.create([
                {title: 'Jaws', year: 1974, summary: 'Shark! ...'}
              ]))
