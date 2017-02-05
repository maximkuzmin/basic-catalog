desc 'Заполняет бд тестовыми компаниями и товарами'
task generate_examples: :environment  do
  puts 'Генерируем 50 компаний с 50 товарами в каждой'
  pb = ProgressBar.create title: 'Компании', total: 50
  50.times do
    company = Company.create name: Ryba::Company.name(solidity: 5),
                          active: rand_boolean
    populate_with_goods company
    pb.increment
  end
  puts 'Генерация окончена'
end


def rand_boolean
  rand(2) == 1
end

def populate_with_goods(company)
  50.times { company.goods.create(good_hash) }
end

def good_hash
  {
    active: rand_boolean,
    name: Faker::Commerce.product_name,
    description: (1..10).map{ Faker::Commerce.product_name}.join(' ')
  }
end
