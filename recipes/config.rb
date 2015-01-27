file ::File.join(node['elasticsearch']['conf']['path']['conf'], 'elasticsearch.yml') do
  owner node['elasticsearch']['user']
  group node['elasticsearch']['group']
  content JSON.parse(node['elasticsearch']['conf'].to_json).to_yaml
end

file ::File.join(node['elasticsearch']['conf']['path']['conf'], 'logging.yml') do
  owner node['elasticsearch']['user']
  group node['elasticsearch']['group']
  content JSON.parse(node['elasticsearch']['logging'].to_json).to_yaml
end
