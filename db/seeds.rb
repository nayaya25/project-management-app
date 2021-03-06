# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# User.create([
#     { first_name: 'Star Wars' }, 
#     { last_name: 'Lord of the Rings' },
#     { email: 'admin@admin.com' },
#     { is_admin: true },
#     { password: 'password' }
#     ])
# User.create(id: 2, first_name: 'Luke', last_name: 'Lord of the Rings', email: 'admin@admin.com', is_admin: true, password: 'password')
Permission.create(id: 1, name: 'Create')
Permission.create(id: 2, name: 'Read')
Permission.create(id: 3, name: 'Update')
Permission.create(id: 4, name: 'Delete')
