action :install do
  plugin_bin = ::File.join(node['elasticsearch']['home'], 'bin/plugin')
  spec = [new_resource.location, new_resource.version].join('/')
  execute "#{plugin_bin} --install #{spec} --silent" do
    not_if "#{plugin_bin} --list | grep #{new_resource.plugin}"
  end
end

action :remove do
  plugin_bin = ::File.join(node['elasticsearch']['home'], 'bin/plugin')
  execute "#{plugin_bin} --remove #{new_resource.plugin} --silent" do
    only_if "#{plugin_bin} --list | grep #{new_resource.plugin}"
  end
end
