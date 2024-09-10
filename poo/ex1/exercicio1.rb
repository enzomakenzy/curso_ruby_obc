class Project
  def initialize 
    @name = "Automação Web"
    @budget = "10000"
    @members = ["Fulano", "Sicrano"]
  end

  def name
    @name
  end

  def budget
    @budget
  end

  def members
    @members
  end

  def budget=(new_budget)
    @budget = new_budget
  end

  def to_s
    "#{@name} - #{@budget} - #{@members}"
  end
end

project = Project.new

puts project
puts project.name
puts project.budget
project.budget = "20000"
puts project.budget
