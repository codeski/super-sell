# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Brand.destroy_all
Department.destroy_all
Product.destroy_all


departments = Department.create([{name: "TVs"}, {name: "Computers"}, {name: "Phones"}])
brands = Brand.create([{name: "Sony"}, {name: "Samsung"}, {name: "Apple"}])
Product.create([
    {name: "tube", price: "20", department_id: departments[0].id, brand_id: brands[2].id}, 
    {name: "4K LED", price: "750", department_id: departments[0].id, brand_id: brands[0].id},
    {name: "8K LED", price: "1750", department_id: departments[0].id, brand_id: brands[1].id},
    {name: "iPhone", price: "1300", department_id: departments[2].id, brand_id: brands[2].id},
    {name: "black berry", price: "500", department_id: departments[2].id, brand_id: brands[1].id},
    {name: "iMac", price: "5000", department_id: departments[1].id, brand_id: brands[2].id},
    {name: "Macbook Pro", price: "6000", department_id: departments[1].id, brand_id: brands[2].id}])
