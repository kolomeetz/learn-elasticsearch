run:
	docker run -p 9200:9200 -p 9300:9300 --volume "data:/usr/share/elasticsearch/data" -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.8.0
