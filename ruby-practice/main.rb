require "./employee.rb"
require "./manager.rb"
require "./intern.rb"


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

intern = Intern.new({first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true})
intern.print_info
intern.send_report
intern.generate_report

manager = Manager.new({first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2]})
manager.send_report
manager.print_info

director = Director.new({first_name: "Otis", last_name: "Ray", salary: 150000, active: true})
director.print_info
director.do_something