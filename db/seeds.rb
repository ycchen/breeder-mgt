# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Rake::Task['db:reset'].invoke

# pre-populate admin
u = User.create!(email: "admin@test.com", password: "foobar1234", password_confirmation: "foobar1234")

# pre-populate dogs table

Dog.create!(name: "A'VIGDORS DUPONT AURELIE FOR HUNGKWANG", call_name: "Happy", birthday: Date.new(2012,10,5), sex: Dog::SEX_TYPE.first, registration_no: 'NP34343401')
Dog.create!(name: "HARDROCK DE PETIT DRAC", call_name: "Hardrock", birthday: Date.new(2013,2,9), sex: Dog::SEX_TYPE.last,registration_no: 'NP34635401')
Dog.create!(name: "Olivia", call_name: "Olivia", birthday: Date.new(2013,3,20), sex: Dog::SEX_TYPE.first)

# pre-populate shows table

Show.create!(name: "Kanadasaga Kennel Club", kennel_club: "Kanadasaga Kennel Club", start_date: Date.new(2013,6,27), end_date: Date.new(2013,6,28), location: "General Clinton Park Route 7  Bainbridge, NY 13733")
Show.create!(name: "Del-Otse-Nango Kennel Club", kennel_club: "Del-Otse-Nango Kennel Club", start_date: Date.new(2013,6,27), end_date: Date.new(2013,6,28), location: "General Clinton Park Route 7  Bainbridge, NY 13733")

Show.create!(name: "Holyoke Kennel Club", kennel_club: "Holyoke Kennel Club", start_date: Date.new(2013,7,4), end_date: Date.new(2013,7,4), location: "Eastern States Exposition Grounds 1305 Memorial Ave. W Springfield, MA 01089")
Show.create!(name: "Kenilworth Kennel Club Of Connecticut", kennel_club: "Kenilworth Kennel Club Of Connecticut", start_date: Date.new(2013,7,5), end_date: Date.new(2013,7,5), location: "Eastern States Exposition Grounds 1305 Memorial Ave. W Springfield, MA 01089")
Show.create!(name: "Farmington Valley Kennel Club", kennel_club: "Farmington Valley Kennel Club", start_date: Date.new(2013,7,6), end_date: Date.new(2013,7,6), location: "Eastern States Exposition Grounds 1305 Memorial Ave. W Springfield, MA 01089")
Show.create!(name: "Naugatuck Valley Kennel Club", kennel_club: "Naugatuck Valley Kennel Club", start_date: Date.new(2013,7,7), end_date: Date.new(2013,7,7), location: "Eastern States Exposition Grounds 1305 Memorial Ave. W Springfield, MA 01089")

Show.create!(name: "Woodstock Dog Club", kennel_club: "Woodstock Dog Club", start_date: Date.new(2013,7,11), end_date: Date.new(2013,7,12), location: "Tunbridge Fairgrounds Route 110 Tunbridge, VT 05077")
Show.create!(name: "Green Mountain Dog Club", kennel_club: "Green Mountain Dog Club", start_date: Date.new(2013,7,11), end_date: Date.new(2013,7,14), location: "Tunbridge Fairgrounds Route 110 Tunbridge, VT 05077")

Show.create!(name: "Harrisburg Kennel Club", kennel_club: "Harrisburg Kennel Club", start_date: Date.new(2013,8,11), end_date: Date.new(2013,8,11), location: "Pennsylvania Farm Show Complex Northwest Bldg Maclay & Cameron Sts Harrisburg, PA (2300 North Cameron Street Harrisburg, PA 17110)")
Show.create!(name: "Penn Ridge Kennel Club", kennel_club: "Penn Ridge Kennel Club", start_date: Date.new(2013,8,9), end_date: Date.new(2013,8,10), location: "Pennsylvania Farm Show Complex Northwest Bldg Maclay & Cameron Sts Harrisburg, PA (2300 North Cameron Street Harrisburg, PA 17110)")
# pre-populate show entry table

ShowEntry.create!(dog_id: 1, show_id: 1, entry_fee: 26, handling_fee: 70, points: 1, title: 'Winner', show_date: '2013-06-27', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 2, entry_fee: 26, handling_fee: 70, points: 1, title: 'Winner', show_date: '2013-06-28', expense: 92.30)
ShowEntry.create!(dog_id: 1, show_id: 3, entry_fee: 24, handling_fee: 70, points: 0, title: 'Reserve', show_date: '2013-07-04', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 4, entry_fee: 24, handling_fee: 70, points: 0, title: 'Reserve', show_date: '2013-07-05', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 5, entry_fee: 24, handling_fee: 70, points: 0, title: '2nd/2', show_date: '2013-07-06', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 6, entry_fee: 24, handling_fee: 70, points: 0, title: '2nd/2', show_date: '2013-07-07', expense: 92.90)
ShowEntry.create!(dog_id: 1, show_id: 7, entry_fee: 26.5, handling_fee: 70, points: 0, title: '2nd/Reserve', show_date: '2013-07-11', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 7, entry_fee: 26.5, handling_fee: 70, points: 0, title: '2nd/2', show_date: '2013-07-12', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 8, entry_fee: 26.5, handling_fee: 70, points: 1, title: 'Winner', show_date: '2013-07-13', expense: 0.0)
ShowEntry.create!(dog_id: 1, show_id: 8, entry_fee: 26.5, handling_fee: 70, points: 0, title: '1st/2', show_date: '2013-07-14', expense: 89)
ShowEntry.create!(dog_id: 1, show_id: 10, entry_fee: 26.5, handling_fee: 0, points: 0, title: '', show_date: '2013-08-9', expense: 0)
ShowEntry.create!(dog_id: 1, show_id: 10, entry_fee: 26.5, handling_fee: 0, points: 0, title: '', show_date: '2013-08-10', expense: 0)
ShowEntry.create!(dog_id: 2, show_id: 9, entry_fee: 26.5, handling_fee: 0, points: 0, title: '', show_date: '2013-08-11', expense: 0)

# pre-populate charges table
Charge.create!(name: "Boarding Fee", description: "fee to pay for Boarding")
Charge.create!(name: "Vet Visit Fee", description: "fee to pay for Vet's bill")
Charge.create!(name: "Show Entry Fee", description: "fee to pay for show entry")
Charge.create!(name: "Handling Fee", description: "fee to pay for handle ing dog at a dog show")
Charge.create!(name: "Travel Expense Fee", description: "fee to pay for handler travel to dog show expense. etc Gas, toll")
Charge.create!(name: "Other Fee", description: "fee to pay for other stuff. etc postage and envlope")

# pre-populate dog_expenses table
DogExpense.create!(dog_id: 1, charge_id: 1, charge_date: '2013-07-01', amount: 225, note: '', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 1, charge_date: '2013-07-01', amount: 225, note: '', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 2, charge_date: '2013-06-20', amount: 19.15, note: 'rabies shot', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 2, charge_date: '2013-06-30', amount: 105, note: 'Titer test', show_entry_id: nil)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-06-27', amount: 70, note: '', show_entry_id: 1)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-06-28', amount: 70, note: '', show_entry_id: 2)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-04', amount: 70, note: '', show_entry_id: 3)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-05', amount: 70, note: '', show_entry_id: 4)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-06', amount: 70, note: '', show_entry_id: 5)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-07', amount: 70, note: '', show_entry_id: 6)
DogExpense.create!(dog_id: 1, charge_id: 5, charge_date: '2013-07-07', amount: 92.90, note: 'expense fro 7/4 to 7/7 4 shows', show_entry_id: 6)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-11', amount: 70, note: '', show_entry_id: 7)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-12', amount: 70, note: '', show_entry_id: 8)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-13', amount: 70, note: '', show_entry_id: 9)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-14', amount: 70, note: '', show_entry_id: 10)
DogExpense.create!(dog_id: 1, charge_id: 5, charge_date: '2013-07-14', amount: 89, note: 'expense fro 7/11 to 7/14 4 shows', show_entry_id: 10)
DogExpense.create!(dog_id: 1, charge_id: 1, charge_date: '2013-07-31', amount: 217, note: 'boarding fee from 7/1/2013 to 7/31/2013', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 1, charge_date: '2013-07-31', amount: 217, note: 'boarding fee from 7/1/2013 to 7/31/2013', show_entry_id: nil)
DogExpense.create!(dog_id: 3, charge_id: 1, charge_date: '2013-07-31', amount: 119, note: 'boarding fee from 7/1/2013 to 7/31/2013', show_entry_id: nil)
DogExpense.create!(dog_id: 3, charge_id: 2, charge_date: '2013-07-24', amount: 28.25, note: "Olivia's rabies shot", show_entry_id: nil)
DogExpense.create!(dog_id: 3, charge_id: 2, charge_date: '2013-07-24', amount: 39.63, note: "Olivia's DHPP puppy shot", show_entry_id: nil)
