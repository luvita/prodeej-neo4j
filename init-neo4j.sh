#!/bin/bash
echo "Begin populate"
docker exec -it neo4j-prodeej bash -c "cat import/init.cql | cypher-shell -u neo4j -p test"
echo "End populate"