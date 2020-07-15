# Endpoints cheatsheet

## Get nodes info

```shell
> curl "localhost:9200/_cat/nodes?v&pretty"

ip         heap.percent ram.percent cpu load_1m load_5m load_15m node.role master name
172.17.0.2           60          96   0    0.00    0.04     0.05 dilmrt    *      42b2c870dde3
```
