Redmine::Plugin.register :easy_baseline do
  name 'Easy Baseline'
  author 'Arean Narrayan'
  url 'https://github.com/Arean82/easy_baseline'
  author_url 'https://github.com/Arean82/'
  description 'Allows creating snapshots of a project in time to compare planned vs actual timelines.'
  version '4.0.0'
  requires_redmine :version_or_higher => '5.0.0'
end

require_relative 'after_init'
