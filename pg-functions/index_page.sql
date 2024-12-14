CREATE FUNCTION index_page(relname text, pageno integer)
RETURNS TABLE(itemoffset smallint, htid tid)
AS $$
SELECT itemoffset,
htid
-- ctid before v.13
FROM bt_page_items(relname,pageno);
$$ LANGUAGE sql;
