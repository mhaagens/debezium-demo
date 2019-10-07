curl -X PUT "localhost:9200/amma.public.demo_table" -H 'Content-Type: application/json' --user 'elastic:changeme' -d' {
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 0
    }
  },
  "mappings": {
    "demo_table": {
      "dynamic": true,
      "properties": {
        "text_value": {
          "type": "text",
          "analyzer": "norwegian",
          "search_analyzer": "norwegian"
        },
        "array_value": {
          "type": "nested",
          "properties": {
            "array_value": {
              "type": "keyword"
            }
          }
        },
        "object_value": {
          "type": "nested",
          "dynamic": true,
          "properties": {}
        },
        "updated_at": {
          "type": "date",
          "format": "strict_date_optional_time||epoch_millis||yyyy-MM-dd HH:mm:ss"
        },
        "created_at": {
          "type": "date",
          "format": "strict_date_optional_time||epoch_millis||yyyy-MM-dd HH:mm:ss"
        }
      }
    }
  }
}
'
