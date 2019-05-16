=begin
nouns: employees, schedules
verbs: add, edit or remove employees & weekly schedules
- Employees will have their own schedule for the week
  -it will be hash with days of the work as keys and array consisting of [start_time,end_time]
- Schedules will consist of all employees weekly schedule put together
=end

class Employee
  attr_reader :name, :weekly_schedule

  def add_name
    puts "Who do you want to add?"
    @name = gets.chomp
  end

  def add_phone
    puts "What's their phone number?"
    @phone = gets.chomp.downcase
  end

  def add_weekly_schedule
    @weekly_schedule = {"Sun" => []}
    @weekly_schedule.map do |day, _|
      puts "Starting shift time (ex. 10:30 AM) on: #{day}?"
      start_shift_time = gets.chomp
      weekly_schedule[day].push(start_shift_time)

      puts "End of shift time (ex. 6:30 PM) on: #{day}?"
      end_shift_time = gets.chomp
      weekly_schedule[day].push(end_shift_time)
    end
  end

  def display
    puts "Hi, #{@name}"
    @weekly_schedule.each{|day, shift|
      puts "You work: #{day} #{shift.first} to #{shift.last}"
    }
  end
end

class Schedule
attr_accessor :employee

  @@schedule = []
  def initialize(employee)
    @@schedule << [employee.name, employee.weekly_schedule]
  end

  def display
    puts "Company Schedule".center(80)
    @@schedule.each do |employee_details|
      employee_details[1].each do |day, shift|
        puts "#{employee_details[0]}: #{day} #{shift.first} to #{shift.last}"
      end
    end
  end
end

class Program
  attr_accessor  :employee, :schedule

  def initialize
    @employee = Employee.new
  end

  def add_employee
    employee.add_name
    employee.add_phone
    employee.add_weekly_schedule
  end

  def update_schedule
    @schedule = Schedule.new(employee)
  end

  def welcome
    puts "Welcome! We first have to add 2 employees " \
    "before we can create the company schedule."
  end

  def start
    puts ""
    puts welcome

    2.times do 
    add_employee
    update_schedule
    end
    puts "-" * 40

    employee.display
    puts ""
    schedule.display
  end
end

program = Program.new
program.start