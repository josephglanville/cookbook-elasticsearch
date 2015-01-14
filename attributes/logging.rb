default['elasticsearch']['logging'] = {
  'es.logger.level' => 'INFO',
  'rootLogger' => '${es.logger.level}, console, file',
  'logger' => {
    'action' => 'DEBUG',
    'com.amazonaws' => 'WARN',
    'index.search.slowlog' => 'TRACE, index_search_slow_log_file',
    'index.indexing.slowlog' => 'TRACE, index_indexing_slow_log_file' },
  'additivity' => {
    'index.search.slowlog' => false, 'index.indexing.slowlog' => false },
  'appender' => {
    'console' => {
      'type' => 'console',
      'layout' => {
        'type' => 'consolePattern',
        'conversionPattern' => '[%d{ISO8601}][%-5p][%-25c] %m%n'
      }
    },
    'file' => {
      'type' => 'dailyRollingFile',
      'file' => '${path.logs}/${cluster.name}.log',
      'datePattern' => "'.'yyyy-MM-dd",
      'layout' => {
        'type' => 'pattern',
        'conversionPattern' => '[%d{ISO8601}][%-5p][%-25c] %m%n'
      }
    },
    'index_search_slow_log_file' => {
      'type' => 'dailyRollingFile',
      'file' => '${path.logs}/${cluster.name}_index_search_slowlog.log',
      'datePattern' => "'.'yyyy-MM-dd",
      'layout' => {
        'type' => 'pattern',
        'conversionPattern' => '[%d{ISO8601}][%-5p][%-25c] %m%n'
      }
    },
    'index_indexing_slow_log_file' => {
      'type' => 'dailyRollingFile',
      'file' => '${path.logs}/${cluster.name}_index_indexing_slowlog.log',
      'datePattern' => "'.'yyyy-MM-dd",
      'layout' => {
        'type' => 'pattern',
        'conversionPattern' => '[%d{ISO8601}][%-5p][%-25c] %m%n'
      }
    }
  }
}
