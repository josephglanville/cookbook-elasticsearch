file ::File.join(node['elasticsearch']['conf']['path']['conf'], 'elasticsearch.yml') do
  owner node['elasticsearch']['user']
  group node['elasticsearch']['group']
  content node['elasticsearch']['conf'].to_hash.to_yaml
end

file ::File.join(node['elasticsearch']['conf']['path']['conf'], 'logging.yml') do
  owner node['elasticsearch']['user']
  group node['elasticsearch']['group']
  content node['elasticsearch']['logging'].to_hash.to_yaml
end
