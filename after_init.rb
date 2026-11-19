# Redmine patches wrapped safely for Zeitwerk & Rails 7
require_relative 'lib/easy_baseline'
require_relative 'lib/easy_baseline/hooks'
require_relative 'lib/easy_baseline/project_patch'
require_relative 'lib/easy_baseline/version_patch'
require_relative 'lib/easy_baseline/issue_patch'

Rails.configuration.to_prepare do
  Project.prepend EasyBaseline::ProjectPatch unless Project.ancestors.include?(EasyBaseline::ProjectPatch)
  Version.prepend EasyBaseline::VersionPatch unless Version.ancestors.include?(EasyBaseline::VersionPatch)
  Issue.prepend EasyBaseline::IssuePatch unless Issue.ancestors.include?(EasyBaseline::IssuePatch)
end

Redmine::AccessControl.map do |map|
  map.project_module :easy_baselines do |pmap|
    pmap.permission :view_baselines, {
      easy_baselines: [:index, :show],
      easy_baseline_gantt: [:show]
    }
    pmap.permission :edit_baselines, {
      easy_baselines: [:create, :destroy, :new]
    }
  end
end
