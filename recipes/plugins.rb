node['elasticsearch']['plugins'].each do |plugin_name, plugin|
  elasticsearch_plugin plugin_name do
    location plugin['location']
    version plugin['version']
  end
end
