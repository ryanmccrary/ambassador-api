# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

org = Organization.create({
    name:     'GOAT',
    address:  '61 Byrdland Dr',
    city:     'Greenville',
    state:    'SC',
    zip:      '29607',
    ein:      '26-4046643',
    description: 'GOAT is a non-profit ministry focused on providing outdoor adventure trips and mentoring for at-risk students from Greenville, as well as all over the state of South Carolina.',
    defaultamount: 350,
    owner_id: 1
})


campaigns = []

goals = [ 100, 250, 500, 1000, 2500]
(1..10).each do |i|
  campaigns << Campaign.create!(
    organization: org,
    name: Faker::Company.catch_phrase,
    description: Faker::Lorem.paragraph,
    goal: goals.sample
  )
end


donations = []

amounts = [ 10, 15, 20, 25 ]
(1..50).each do |i|
  donations << Donation.create!(
    campaign: campaigns.sample,
    amount: amounts.sample
  )
end
