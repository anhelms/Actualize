require "./employee.rb"
require "./email_reportable.rb"

class Manager < Employee
    def initialize(input_options)
        super
        @employees = input_options[:employees]
    end
    def send_report
        puts "Sending email...."
        puts "email sent!"
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
