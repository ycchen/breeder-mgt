# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require 'faker'

# Rake::Task['db:reset'].invoke

# pre-populate admin
u = User.create!(email: "admin@test.com", password: "foobar1234", password_confirmation: "foobar1234")
# added 'admin' to the role table and assigned to admin@test.com 
u.add_role "admin"

u2 = User.create!(email: "user@test.com", password: "test1234", password_confirmation: "test1234")
u2.add_role "user"

u3 = User.create!(email: "yungchih_chen@yahoo.com", password: "foobar1234!", password_confirmation: "foobar1234!")
u3.add_role "admin"


Color.create!(name: 'Cream')
Color.create!(name: 'Brindle & White')
Color.create!(name: 'White')
Color.create!(name: 'Fawn')
Color.create!(name: 'Brindle')
Color.create!(name: 'Fawn & White')

PaymentType.create!(name: 'Cash', description: 'Cash')
PaymentType.create!(name: 'Check', description: 'Check')

PaymentStatus.create!(name: 'Received', note: 'Payment Received')
PaymentStatus.create!(name: 'Pending', note: 'Payment Pending')

brindle = Color.where(name: 'Brindle').first
bw = Color.where(name: 'Brindle & White').first
cream = Color.where(name: 'Cream').first
fawn = Color.where(name: 'Fawn').first

# pre-populate dogs table
Dog.create!(name: "A'VIGDORS DUPONT AURELIE FOR HUNGKWANG", call_name: "Happy", color_id: brindle.id, birthday: Date.new(2012,10,5), gender: Dog::GENDER_TYPE.first, registration_no: 'NP34343401')
Dog.create!(name: "HARDROCK DE PETIT DRAC", call_name: "Hardrock", color_id: brindle.id, birthday: Date.new(2013,2,9), gender: Dog::GENDER_TYPE.last,registration_no: 'NP34635401')
Dog.create!(name: "Olivia", call_name: "Olivia", color_id: brindle.id, birthday: Date.new(2013,3,20), gender: Dog::GENDER_TYPE.first)

Dog.create!(name: "A'VIGDORS REPERTOIRE EXCELLANTE DE L'AVENIR", call_name: "Kiki", color_id: brindle.id, birthday: Date.new(2012,3,16), gender: Dog::GENDER_TYPE.last)
Dog.create!(name: "HAPPY LIFE OF LITTLE PEARLS CARMEN", call_name: "Carmen", color_id: fawn.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "DUSTIN VIVA ATLETIC", call_name: "Dustin", color_id: brindle.id, birthday: Date.new(2012,5,8), gender: Dog::GENDER_TYPE.last)
Dog.create!(name: "Kato", call_name: "Kato", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.last)
Dog.create!(name: "Lucky", call_name: "Lucky", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.last)
Dog.create!(name: "Frank", call_name: "Frank", color_id: cream.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.last)
Dog.create!(name: "Chris", call_name: "Chris", color_id: bw.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.last)
Dog.create!(name: "HAPPY LIFE OF LITTLE PEARLS CORRADO", call_name: "Corrado", color_id: fawn.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.last)

Dog.create!(name: "HUNGKWANG KHULAN", call_name: "Raven", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Jessica", call_name: "Jessica", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Betty", call_name: "Betty", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Sissy", call_name: "Sissy", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Tiffany", call_name: "Tiffany", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Margo", call_name: "Margo", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Vicky", call_name: "Vicky", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "HUNGKWANG Jackie", call_name: "Jackie", color_id: brindle.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)

Dog.create!(name: "A-May", call_name: "A-May", color_id: cream.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Cartier", call_name: "Cartier", color_id: cream.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Emily", call_name: "Emily", color_id: cream.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Nana", call_name: "Nana", color_id: cream.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)

Dog.create!(name: "Mambo", call_name: "Mambo", color_id: fawn.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Diamond", call_name: "Diamond", color_id: fawn.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "FANCIBUL JEST DIPPED- N BUTTERSCOTCH", call_name: "Butter", color_id: fawn.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)

Dog.create!(name: "ESME VIVA ATLETIC", call_name: "Esme", color_id: bw.id, birthday: Date.new(2012,6,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Apple", call_name: "Apple", color_id: bw.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Melody", call_name: "Melody", color_id: bw.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)
Dog.create!(name: "Ella", call_name: "Ella", color_id: bw.id, birthday: Date.new(2013,1,1), gender: Dog::GENDER_TYPE.first)




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
Charge.create!(name: "Purchase Fee", description: "fee to pay to purchase a dog")
Charge.create!(name: "Other Fee", description: "fee to pay for other stuff. etc postage and envlope")

# pre-populate dog_expenses table
DogExpense.create!(dog_id: 1, charge_id: 1, charge_date: '2013-07-01', amount: 225, currency: 'USD',note: '', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 1, charge_date: '2013-07-01', amount: 225, currency: 'USD',note: '', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 2, charge_date: '2013-06-20', amount: 19.15, currency: 'USD',note: 'rabies shot', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 2, charge_date: '2013-06-30', amount: 105, currency: 'USD',note: 'Titer test', show_entry_id: nil)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-06-27', amount: 70, currency: 'USD',note: '', show_entry_id: 1)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-06-28', amount: 70, currency: 'USD',note: '', show_entry_id: 2)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-04', amount: 70, currency: 'USD',note: '', show_entry_id: 3)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-05', amount: 70, currency: 'USD',note: '', show_entry_id: 4)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-06', amount: 70, currency: 'USD',note: '', show_entry_id: 5)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-07', amount: 70, currency: 'USD',note: '', show_entry_id: 6)
DogExpense.create!(dog_id: 1, charge_id: 5, charge_date: '2013-07-07', amount: 92.90, currency: 'USD',note: 'expense fro 7/4 to 7/7 4 shows', show_entry_id: 6)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-11', amount: 70, currency: 'USD',note: '', show_entry_id: 7)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-12', amount: 70, currency: 'USD',note: '', show_entry_id: 8)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-13', amount: 70, currency: 'USD',note: '', show_entry_id: 9)
DogExpense.create!(dog_id: 1, charge_id: 4, charge_date: '2013-07-14', amount: 70, currency: 'USD',note: '', show_entry_id: 10)
DogExpense.create!(dog_id: 1, charge_id: 5, charge_date: '2013-07-14', amount: 89, currency: 'USD',note: 'expense fro 7/11 to 7/14 4 shows', show_entry_id: 10)
DogExpense.create!(dog_id: 1, charge_id: 1, charge_date: '2013-07-31', amount: 217, currency: 'USD',note: 'boarding fee from 7/1/2013 to 7/31/2013', show_entry_id: nil)
DogExpense.create!(dog_id: 2, charge_id: 1, charge_date: '2013-07-31', amount: 217, currency: 'USD',note: 'boarding fee from 7/1/2013 to 7/31/2013', show_entry_id: nil)
DogExpense.create!(dog_id: 3, charge_id: 1, charge_date: '2013-07-31', amount: 119, currency: 'USD',note: 'boarding fee from 7/1/2013 to 7/31/2013', show_entry_id: nil)
DogExpense.create!(dog_id: 3, charge_id: 2, charge_date: '2013-07-24', amount: 28.25, currency: 'USD',note: "Olivia's rabies shot", show_entry_id: nil)
DogExpense.create!(dog_id: 3, charge_id: 2, charge_date: '2013-07-24', amount: 39.63, currency: 'USD',note: "Olivia's DHPP puppy shot", show_entry_id: nil)


Customer.create!(name: 'Lisa Smith', first_name: 'Lisa', last_name: 'Smith', email: 'lisa.smith@aol.com', phone: '703-789-4561', mobile: '789-456-1231', address: '4578 richme St', city: 'Arlington', zipcode: '22201')
Customer.create!(name: 'John Doe', first_name: 'John', last_name: 'Doe', email: 'john.doe@luckme.com', phone: '704-789-5561', mobile: '729-446-1531', address: '168 poorme St', city: 'Arlington', zipcode: '22201')

# populate Pregnancy
Pregnancy.create!(dog_id: 12, heat_start_date: Date.new(2013,4,9), due_date: Date.new(2013,6,23) , surgery_date: Date.new(2013,6,23), total_puppy: 1, name: "Raven-2013-04")
Pregnancy.create!(dog_id: 25, heat_start_date: Date.new(2013,5,6), due_date: Date.new(2013,7,18) , surgery_date: Date.new(2013,7,18), total_puppy: 1, name: "Diamond-2013-05")
Pregnancy.create!(dog_id: 29, heat_start_date: Date.new(2013,5,7), due_date: Date.new(2013,7,22) , surgery_date: Date.new(2013,7,22), total_puppy: 2, name: "Melody-2013-05")
Pregnancy.create!(dog_id: 20, heat_start_date: Date.new(2013,5,11), due_date: Date.new(2013,7,23) , surgery_date: Date.new(2013,7,23), total_puppy: 2, name: "A-May-2013-05")
Pregnancy.create!(dog_id: 24, heat_start_date: Date.new(2013,5,13), due_date: Date.new(2013,7,28) , surgery_date: Date.new(2013,7,28), total_puppy: 1, name: "Mambo-2013-05")
Pregnancy.create!(dog_id: 23, heat_start_date: Date.new(2013,05,13), due_date: Date.new(2013,8,1) , surgery_date: Date.new(2013,8,1), total_puppy: 4, name: "Nana-2013-05")
Pregnancy.create!(dog_id: 17, heat_start_date: Date.new(2013,6,1), due_date: Date.new(2013,8,14) , surgery_date: Date.new(2013,8,14), total_puppy: 5, name: "Margo-2013-06")
Pregnancy.create!(dog_id: 21, heat_start_date: Date.new(2013,6,11), due_date: Date.new(2013,8,24) , surgery_date: Date.new(2013,8,24), total_puppy: 1, name: "Cartier-2013-06")
Pregnancy.create!(dog_id: 27, heat_start_date: Date.new(2013,6,13), due_date: Date.new(2013,8,25) , surgery_date: Date.new(2013,8,25), total_puppy: 7, name: "Esme-2013-06")
Pregnancy.create!(dog_id: 28, heat_start_date: Date.new(2013,6,29), due_date: Date.new(2013,9,9) , surgery_date: Date.new(2013,9,9), total_puppy: 0, name: "Apple-2013-06")
Pregnancy.create!(dog_id: 14, heat_start_date: Date.new(2013,7,3), due_date: Date.new(2013,9,9) , surgery_date: Date.new(2013,9,9), total_puppy: 0, name: "Betty-2013-07")
Pregnancy.create!(dog_id: 15, heat_start_date: Date.new(2013,7,14), due_date: Date.new(2013,9,23) , surgery_date: Date.new(2013,9,23), total_puppy: 0, name: "Sissy-2013-07")
Pregnancy.create!(dog_id: 18, heat_start_date: Date.new(2013,7,14), due_date: Date.new(2013,9,27) , surgery_date: Date.new(2013,9,27), total_puppy: 0, name: "Vicky-2013-07")
Pregnancy.create!(dog_id: 13, heat_start_date: Date.new(2013,7,18), due_date: Date.new(2013,10,3) , surgery_date: Date.new(2013,10,3), total_puppy: 0, name: "Jessica-2013-0")
Pregnancy.create!(dog_id: 30, heat_start_date: Date.new(2013,7,21), due_date: Date.new(2013,10,4) , surgery_date: Date.new(2013,10,4), total_puppy: 0, name: "Ella-2013-07")
Pregnancy.create!(dog_id: 22, heat_start_date: Date.new(2013,7,26), due_date: Date.new(2013,10,8) , surgery_date: Date.new(2013,10,8), total_puppy: 0, name: "Emily-2013-07")
Pregnancy.create!(dog_id: 19, heat_start_date: Date.new(2013,7,18), due_date: Date.new(2013,10,13) , surgery_date: Date.new(2013,10,13), total_puppy: 0, name: "Jackie-2013-07")
Pregnancy.create!(dog_id: 5, heat_start_date: Date.new(2013,8,6), due_date: Date.new(2013,10,16) , surgery_date: Date.new(2013,10,16), total_puppy: 0, name: "Carmen-2013-08")
Pregnancy.create!(dog_id: 16, heat_start_date: Date.new(2013,8,11), due_date: Date.new(2013,10,22) , surgery_date: Date.new(2013,10,22), total_puppy: 0, name: "Tiffany-2013-08")

# populate Mating
Mating.create!(pregnancy_id: 1, mating_date: Date.new(2013,4,21),sire_id: 4)
Mating.create!(pregnancy_id: 1, mating_date: Date.new(2013,4,23),sire_id: 4)
Mating.create!(pregnancy_id: 1, mating_date: Date.new(2013,4,24),sire_id: 4)
Mating.create!(pregnancy_id: 2, mating_date: Date.new(2013,5,16),sire_id: 4)
Mating.create!(pregnancy_id: 2, mating_date: Date.new(2013,5,17),sire_id: 4)
Mating.create!(pregnancy_id: 2, mating_date: Date.new(2013,5,18),sire_id: 4)
Mating.create!(pregnancy_id: 3, mating_date: Date.new(2013,5,19),sire_id: 4)
Mating.create!(pregnancy_id: 3, mating_date: Date.new(2013,5,21),sire_id: 4)
Mating.create!(pregnancy_id: 3, mating_date: Date.new(2013,5,22),sire_id: 4)
Mating.create!(pregnancy_id: 4, mating_date: Date.new(2013,5,21),sire_id: 6)
Mating.create!(pregnancy_id: 4, mating_date: Date.new(2013,5,23),sire_id: 6)
Mating.create!(pregnancy_id: 4, mating_date: Date.new(2013,5,24),sire_id: 6)
Mating.create!(pregnancy_id: 5, mating_date: Date.new(2013,5,25),sire_id: 4)
Mating.create!(pregnancy_id: 5, mating_date: Date.new(2013,5,26),sire_id: 4)
Mating.create!(pregnancy_id: 5, mating_date: Date.new(2013,5,28),sire_id: 4)
Mating.create!(pregnancy_id: 6, mating_date: Date.new(2013,5,31),sire_id: 9)
Mating.create!(pregnancy_id: 6, mating_date: Date.new(2013,6,1) ,sire_id: 9)
Mating.create!(pregnancy_id: 6, mating_date: Date.new(2013,6,3) ,sire_id: 9)
Mating.create!(pregnancy_id: 7, mating_date: Date.new(2013,6,14),sire_id: 6)
Mating.create!(pregnancy_id: 7, mating_date: Date.new(2013,6,16),sire_id: 6)
Mating.create!(pregnancy_id: 7, mating_date: Date.new(2013,6,17),sire_id: 6)
Mating.create!(pregnancy_id: 8, mating_date: Date.new(2013,6,22),sire_id: 7)
Mating.create!(pregnancy_id: 8, mating_date: Date.new(2013,6,23),sire_id: 7)
Mating.create!(pregnancy_id: 8, mating_date: Date.new(2013,6,25),sire_id: 7)
Mating.create!(pregnancy_id: 9, mating_date: Date.new(2013,6,25),sire_id: 4)
Mating.create!(pregnancy_id: 9, mating_date: Date.new(2013,6,26),sire_id: 4)
Mating.create!(pregnancy_id: 9, mating_date: Date.new(2013,6,28),sire_id: 4)
Mating.create!(pregnancy_id: 10, mating_date: Date.new(2013,7,8),sire_id: 6)
Mating.create!(pregnancy_id: 10, mating_date: Date.new(2013,7,9),sire_id: 6)
Mating.create!(pregnancy_id: 10, mating_date: Date.new(2013,7,10),sire_id: 6)
Mating.create!(pregnancy_id: 11, mating_date: Date.new(2013,7,8),sire_id: 11)
Mating.create!(pregnancy_id: 11, mating_date: Date.new(2013,7,9),sire_id: 11)
Mating.create!(pregnancy_id: 11, mating_date: Date.new(2013,7,10),sire_id: 11)
Mating.create!(pregnancy_id: 12, mating_date: Date.new(2013,7,22),sire_id: 4)
Mating.create!(pregnancy_id: 12, mating_date: Date.new(2013,7,23),sire_id: 4)
Mating.create!(pregnancy_id: 12, mating_date: Date.new(2013,7,26),sire_id: 4)
Mating.create!(pregnancy_id: 13, mating_date: Date.new(2013,7,26),sire_id: 9)
Mating.create!(pregnancy_id: 13, mating_date: Date.new(2013,7,27),sire_id: 9)
Mating.create!(pregnancy_id: 13, mating_date: Date.new(2013,7,29),sire_id: 9)
Mating.create!(pregnancy_id: 14, mating_date: Date.new(2013,8,2),sire_id: 10)
Mating.create!(pregnancy_id: 14, mating_date: Date.new(2013,8,3),sire_id: 10)
Mating.create!(pregnancy_id: 14, mating_date: Date.new(2013,8,5),sire_id: 10)
Mating.create!(pregnancy_id: 15, mating_date: Date.new(2013,8,2),sire_id: 4)
Mating.create!(pregnancy_id: 15, mating_date: Date.new(2013,8,3),sire_id: 4)
Mating.create!(pregnancy_id: 15, mating_date: Date.new(2013,8,5),sire_id: 4)
Mating.create!(pregnancy_id: 16, mating_date: Date.new(2013,8,7),sire_id: 8)
Mating.create!(pregnancy_id: 16, mating_date: Date.new(2013,8,8),sire_id: 8)
Mating.create!(pregnancy_id: 16, mating_date: Date.new(2013,8,10),sire_id: 8)
Mating.create!(pregnancy_id: 17, mating_date: Date.new(2013,8,12),sire_id: 9)
Mating.create!(pregnancy_id: 17, mating_date: Date.new(2013,8,13),sire_id: 8)
Mating.create!(pregnancy_id: 18, mating_date: Date.new(2013,8,14),sire_id: 4)
Mating.create!(pregnancy_id: 18, mating_date: Date.new(2013,8,15),sire_id: 4)
Mating.create!(pregnancy_id: 18, mating_date: Date.new(2013,8,16),sire_id: 4)
Mating.create!(pregnancy_id: 19, mating_date: Date.new(2013,8,20),sire_id: 4)
Mating.create!(pregnancy_id: 19, mating_date: Date.new(2013,8,21),sire_id: 4)
Mating.create!(pregnancy_id: 19, mating_date: Date.new(2013,8,23),sire_id: 4)

# populate Litter
Litter.create!(pregnancy_id:1, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:2, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:3, gender: 'Female', color_id:	5, survival: FALSE)
Litter.create!(pregnancy_id:3, gender: 'Male', color_id:	2, survival: FALSE)
Litter.create!(pregnancy_id:4, gender: 'Male', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:4, gender: 'Male', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:5, gender: 'Female', color_id:	4, survival: FALSE)
Litter.create!(pregnancy_id:6, gender: 'Male', color_id:	1, survival: TRUE)
Litter.create!(pregnancy_id:6, gender: 'Male', color_id:	1, survival: TRUE)
Litter.create!(pregnancy_id:6, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:6, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:7, gender: 'Male', color_id:	2, survival: FALSE)
Litter.create!(pregnancy_id:7, gender: 'Female', color_id:	2, survival: TRUE)
Litter.create!(pregnancy_id:7, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:7, gender: 'Male', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:7, gender: 'Male', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:8, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Female', color_id:	5, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Male', color_id:	4, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Male', color_id:	2, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Male', color_id:	2, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Male', color_id:	2, survival: TRUE)
Litter.create!(pregnancy_id:9, gender: 'Male', color_id:	2, survival: TRUE)
