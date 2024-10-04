copy shikimori.Comment(UserId,ReplyToId,Text,IsOfftopic,CreatedAt)
from 'C:/Users/1/Desktop/PBD/lr2/data-init/csv/commentInit.csv'
with delimiter ','
NULL as 'null'
QUOTE '`'
csv HEADER;