# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
kevin = User.create(username: "kevin.kelley", password: "Mprove354.", name: "Kevin Kelley");

lisa_h = Staff.create(name: 'Lisa Hullinger', group_id: "2");

group_1 = Group.create(number: 1);
group_2 = Group.create(number: 2);
group_3 = Group.create(number: 3);
group_4 = Group.create(number: 4);

seh = Account.create(name: "Southeast Health", group_id: 2);
kd = Account.create(name: "Kings Daughter", group_id: 1);