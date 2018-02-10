# db/seeds.rb

User.create([{email: 'example@example.org', first_name: 'test', last_name: 'tester', password: '121212'}])


TransactionType.create([{ type_name: 'income' },
                        { type_name: 'consumption' }])


MoneyOperation.create([
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 1, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 2, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 2, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'foo - bar', transaction_type_id: 2, user_id: 1 },
                    {score: rand(0.00..1000000000.00), info: 'bar - foo', transaction_type_id: 2, user_id: 1 }
                  ])
