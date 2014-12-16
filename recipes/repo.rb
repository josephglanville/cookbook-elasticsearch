apt_repository 'elasticsearch' do
  uri          'http://packages.elasticsearch.org/elasticsearch/1.4/debian'
  arch         'amd64'
  distribution 'stable'
  components   ['main']
  key          'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
end
