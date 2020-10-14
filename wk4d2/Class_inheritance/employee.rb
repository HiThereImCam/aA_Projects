require "byebug"

class Employee 
    attr_reader :name, :title, :salary, :boss 

    def initialize(name, title, salary, boss)
        @name = name 
        @title = title
        @salary = salary
        @boss = boss  
    end

    debugger
    def bonus(multiplier)
        total = self.salary * multiplier
    end


end

class Manager < Employee 
    attr_accessor :assigned_employees, :salary
    def initialize(name, title, salary, boss)
        debugger
        @assigned_employees = []
        @salary = @assigned_employees.inject do |acc, ele|
                    acc.salary += ele.salary 
                  end
        super(name, title, salary, boss)  
    end

end

ned = Manager.new("Ned", "Founder", 1000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

ned.assigned_employees = [darren, shawna, david]
darren.assigned_employees = [shawna, david]


ned.bonus(5) # => 500_000
darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000