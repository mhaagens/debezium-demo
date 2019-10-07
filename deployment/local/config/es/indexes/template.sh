curl -XPUT "http://localhost:9200/_template/kafkaconnect/" -H 'Content-Type: application/json' --user 'elastic:changeme' -d'
{
  "index_patterns": "*",
  "settings": {
    "number_of_shards": 1,
    "number_of_replicas": 0
  },
  "mappings": {
    "_default_": {
      "dynamic_templates": [
        {
          "created_at": {
            "match": "created_at",
            "mapping": {
              "type": "date"
            }
          }
        },
        {
          "updated_at": {
            "match": "updated_at",
            "mapping": {
              "type": "date"
            }
          }
        },
        {
          "updated_at": {
            "match": "*_ts",
            "mapping": {
              "type": "date"
            }
          }
        },
        {
          "non_analysed_string_template": {
            "match": "*",
            "match_mapping_type": "string",
            "mapping": {
              "type": "keyword"
            }
          }
        }
      ]
    }
  }
}'