# 1. Represents data as arrays
employee1 = ["Majors", "Carter", 80000, true]
employee2 = ["Danilo", "Campos", 70000, true]

# concatonation 
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# interpolation
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# 2. Represents data as hashes
employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => "80000", "active" => true}
employee2 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => "70000", "active" => true}

# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year." 
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year." 

# 3. Represents data as hashes with symbols
# employee1 = {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
# employee2 = {first_name: "Danilo", last_name: "Campos", salary: 70000, active: true}

# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# 4 

class Employee
    attr_accessor :last_name 
    attr_reader :first_name, :active
    attr_writer :active

    def initialize(input_options)
        @first_name = input_options[:first_name]
        @last_name = input_options[:last_name]
        @salary = input_options[:salary]
        @active = input_options[:active]
    end

    def print_info
        puts "#{@first_name} #{@last_name} makes #{@salary} a year."
    end

    def give_annual_raise
        @salary = 1.05 * @salary
    end
end
