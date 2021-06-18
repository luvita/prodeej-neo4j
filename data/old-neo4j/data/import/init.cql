MATCH (n)
DETACH DELETE n;

CREATE INDEX ON :thematic(id,label,image);

LOAD CSV WITH HEADERS FROM "file:///thematics.csv" AS csvLine
CREATE (t:thematic {id: toInteger(csvLine.id), label: csvLine.label});

