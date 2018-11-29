class Project
  attr_reader :name, :owner, :reports

  def initialize(name, owner)
    @name = name
    @owner = owner
    @reports = [0, 12].sample # Simple hack to create object with and without assigned reports
  end
end

class PortfolioViewObject
  attr_reader :project

  def initialize(project)
    @project = project
  end

  def project_with_owner
    "#{project.name} owned by #{project.owner}"
  end

  def has_reports?
    !project.reports.zero?
  end
end
