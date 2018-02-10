# db/seeds.rb

connection = ActiveRecord::Base.connection()

sql = <<-EOL
  INSERT INTO users values ('Admin');
  INSERT INTO categories values ('Supervisors');
EOL

sql.split(';').each do |s|
  connection.execute(s.strip) unless s.strip.empty?
end


User.create([{email: 'example@example.org', first_name: 'test', last_name: 'tester', password: '121212'}])


TransactionType.create([{ type_name: 'income' },
                        { type_name: 'consumption' }])


Transaction.create([
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 2, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 2, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', type_id: 2, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'bar - foo', type_id: 2, user_id: 1 }
                  ])
