# How to launch Elasticsearch locally

If we need ES for development , for experiments or de

Probably, the easiest way to run Elasticsearch, is launching a Docker container:

```shell
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.8.0
```

I put this command to [Makefile](Makefile), so `make` will do the job without extra typing.

After that we can make an HTTP call to Elasticsearch (`curl` will help) to get something:

```shell
> curl localhost:9200
{
  "name" : "42b2c870dde3",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "-q_hnA0pQESbZW7s594zlw",
  "version" : {
    "number" : "7.8.0",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "757314695644ea9a1dc2fecd26d1a43856725e65",
    "build_date" : "2020-06-14T19:35:50.234439Z",
    "build_snapshot" : false,
    "lucene_version" : "8.5.1",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}
```

This Elasticsearch instance will not preserve data between relaunches.
