# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create 4 user types
UserType.create(type_name: "minicipalityWorker")
UserType.create(type_name: "careOrganisation")
UserType.create(type_name: "houseOwner")
UserType.create(type_name: "houseSeeker")

# Create user
User.create(email: "user1@gmail.com", password: "123456", password_confirmation: "123456", user_type_id: 1, role: 2)

# create status
Status.create(status_name: "temporal", description: "overnight stay only, preferably for a period of up
to 2 years for people who are homeless, who do not have a safe place to live or
who are unable to survive in society independently")
Status.create(status_name: "semi-permanent", description: "up to 5 years, mainly for foreigners and
refugees, who get their own home within a care organization")
Status.create(status_name: "protected", description: "form of assisted living for people with psychological or
psychosocial problems for a period between 2-5 years and based on compliance
with certain criteria")