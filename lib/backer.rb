class Backer
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def back_project(project)
    ProjectBacker.new(project, self)
    
  end

  def backed_projects
    ProjectBacker.all.filter {|x| x.backer == self }.map(&:project)
  end

end
