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
module EmailReportable
    def send_report
        puts "Sending email...."
        puts "email sent!"
    end

    def generate_report
        puts "Time to send email!"
    end
end
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

class Manager < Employee
include EmailReportable
    def initialize(input_options)
        super
        @employees = input_options[:employees]
    end

    def give_raises
        puts "Everyone gets a 10% raise!"
    end

    def fire_everyone
        puts "YOU'RE FIRED"
    end
end

class Director < Manager
    def do_something
        puts "Get to the thing!"
    end
end

class Intern < Employee
include EmailReportable
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active: true})
employee1.print_info
employee2.print_info
employee1.give_annual_raise
employee1.print_info
puts employee1.first_name
puts employee1.last_name
puts employee1.active
employee1.active =(false)
puts employee1.active

manager = Manager.new({first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2]})
manager.print_info
manager.send_report
manager.generate_report

director = Director.new({first_name: "Otis", last_name: "Ray", salary: 150000, active: true})
director.print_info
director.do_something

intern = Intern.new({first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true})
intern.print_info
intern.send_report
intern.generate_report