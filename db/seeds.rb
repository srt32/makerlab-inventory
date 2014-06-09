# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tool.create(name:'hammer', location:'white crate', quantity: 3, available: true)
Tool.create(name:'screwdriver', location:'desk one drawer', quantity: 2, available: false)
Tool.create(name:'xacto knife', location:'island', quantity: 20, available: true)

Inventory.create(name:'push pins', location:'blue bins', stock: true)
Inventory.create(name:'markers', location:'blue bins', stock: false)
Inventory.create(name:'note cards', location:'blue bins', stock: true)