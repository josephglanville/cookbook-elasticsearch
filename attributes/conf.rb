default['elasticsearch']['conf'] = {
  cluster: {
    name: 'elasticsearch',
    routing: {
      allocation: {
        node_initial_primaries_recoveries: 4,
        node_concurrent_recoveries: 2
      }
    }
  },
  node: {
    master: true,
    data: true
  },
  index: {
    number_of_shards: 5,
    number_of_replicas: 1,
    search: {
      slowlog: {
        threshold: {
          query: {
            warn: '10s',
            info: '5s',
            debug: '2s',
            trace: '500ms'
          },
          fetch: {
            warn: '1s',
            info: '800ms',
            debug: '500ms',
            trace: '200ms'
          }
        }
      }
    },
    indexing: {
      slowlog: {
        threshold: {
          index: {
            warn: '10s',
            info: '5s',
            debug: '2s',
            trace: '500ms'
          }
        }
      }
    }
  },
  path: {
    conf: '/etc/elasticsearch',
    data: '/var/lib/elasticsearch',
    work: '/tmp/elasticsearch',
    logs: '/var/log/elasticsearch',
    plugins: '/usr/share/elasticsearch/plugins'
  },
  transport: {
    tcp: {
      port: 9300,
      compress: false
    }
  },
  http: {
    port: 9200,
    jsonp: {
      enable: false
    }
  },
  indices: {
    recovery: {
      max_bytes_per_sec: '20mb',
      concurrent_streams: 5
    }
  },
  monitor: {
    jvm: {
      gc: {
        young: {
          warn: '1000ms',
          info: '700ms',
          debug: '400ms'
        },
        old: {
          warn: '10s',
          info: '5s',
          debug: '2s'
        }
      }
    }
  }
}
