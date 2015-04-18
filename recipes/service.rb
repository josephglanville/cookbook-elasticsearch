# Replace SysV init with Upstart
execute 'disable-elasticsearch' do
  command 'update-rc.d elasticsearch remove'
  action :nothing
end

file '/etc/init.d/elasticsearch' do
  action :delete
  notifies :run, 'execute[disable-elasticsearch]'
end

file '/etc/init/elasticsearch.comf'
