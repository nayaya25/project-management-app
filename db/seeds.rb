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
User.create(id: 1, first_name: 'Ibrahim', last_name: 'Bashir', email: 'admin@example.com', is_admin: true, password: 'password')
