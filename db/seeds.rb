# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
billy = User.create(first_name: "Billy", last_name: "Buxington", email: "billy@aol.com", password: "greenbeans")
claire = User.create(first_name: "Claire", last_name: "Strickland", email: "claire@gmail.com", password: "fishsticks")
ashley = User.create(first_name: "Ashley", last_name: "Tisdale", email: "ashley@yahoo.com", password: "milkmaid")
megan = User.create(first_name: "Megan", last_name: "Fox", email: "megan@aol.com", password: "greenbeans")
ben = User.create(first_name: "Ben", last_name: "Shwartzman", email: "ben@gmail.com", password: "fishsticks")
luke = User.create(first_name: "Luke", last_name: "Dukerman", email: "luke@yahoo.com", password: "milkmaid")

procore = CoverLetter.create(name: "ReD Associates Cover Letter", body: "Research\n\nMy thesis project for my software engineering program at Flatiron School focused on honing peoples’ research skills when it comes to the issues facing society today. Furthermore, as founder and head tutor at Paper Jam Tutoring, I have helped dozens of undergraduate students craft insightful and incisive questions for interviews relating to research projects. I’ve also helped them find and interpret high-quality qualitative research for hundreds of assignments on topics ranging from psychology to business to indigenous tribes and more. Lastly, between writing in-depth news articles about developments in sub-Saharan Africa for the Thomson Reuters Foundation and compiling in-depth market analysis for corporate clients in my time at Keystone Equities, I know firsthand the importance of meticulous attention to both accuracy and clarity.\n\nCommunication\n\nAs a tutor, I have worked with many students from around the world with less-than-proficient English language skills and found ways to communicate effectively and engagingly. As a front-desk associate at a hotel just minutes from United Nations Headquarters, I accommodated guests from all over the world, learning to overcome all sorts of cultural and linguistic barriers. In addition to English being my native language, I speak fluent Russian and limited Hebrew. In so far as wielding these languages effectively, while at the Thomson Reuter’s Foundation I participated in their C-suite communications training program, geared toward adapting to changes and using clear, decisive language across all forms of communication.\n\nI believe I’m a great fit for this position because like ReD, I believe in the power of storytelling. The best, most impactful stories are those which help us make sense of that which seems senseless, of ourselves and of the complex world around us. My cross-disciplinary skillset allows for a wider lens through which to observe and deconstruct these complexities, whether face-to-face or from behind the screen.", user: billy)

Company.create(name: "Apple")
Company.create(name: "Google")
Company.create(name: "Microsoft")
Company.create(name: "Procore")
Company.create(name: "PwC")
