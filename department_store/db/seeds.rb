 # Faker Gem


10.times do
  @dep = Department.create(
    department_name: Faker::Company.name
    )
    20.times do
      Product.create(
          product_name: Faker::Commerce.product_name,
          price: Faker::Commerce.price,
          brand: Faker::Commerce.department,
          department_id: @dep.id
      )
    end
end
