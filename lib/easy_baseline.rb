module EasyBaseline

  IDENTIFIER = 'easy_baselines-root'

  def self.baseline_root_project
    project = Project.find_by(identifier: IDENTIFIER)
    return project if project

    project = Project.new(identifier: IDENTIFIER)
    project.name = 'Easy Baselines Root'
    project.status = Project::STATUS_ARCHIVED
    project.is_public = false
    project.save!(validate: false)
    project
  end

end
