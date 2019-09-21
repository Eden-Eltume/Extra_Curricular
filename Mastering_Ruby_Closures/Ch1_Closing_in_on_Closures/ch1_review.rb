=begin
  1. A closure is programming concept by which a programmer can save chunks of code and use a it later.
  2. The free variable in the following is amount. 
=end

# Qeustion 3
new_db = lambda do
        db     = {}
        insert = lambda { |artist, album| db[artist] = album }
        dump   = lambda { db }
        delete = lambda do |artist|
                    old = db[artist]
                    db[artiste] = nil
                    old
                 end
​       Hash.new(insert: insert, dump: dump, delete: delete)
​      end

# Question 4
complement = lambda do |predicate|
  lambda do |value|
      not predicate.call(value)
  end
end

p complement.call(is_even).call(4)
p complement.call(is_even).call(5)

# Question 5
p reducer.call([], lambda {|acc, x| acc << x * 2} , [1,2,3,4,5])
