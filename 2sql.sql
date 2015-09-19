#1
SELECT id, parent_category_id, name FROM category WHERE parent_category_id IS NULL AND name RLIKE '^авто'
;
#2
select cv . id, cv .  parent_category_id, cv . name from  category cc
  right join  category cv 
  on cv.id = cc.parent_category_id 
  group by cv.id
  having count(*) < 4

;
#3
select cv . id, cv .  parent_category_id, cv . name from  category cc
right join  category cv on cv.id = cc.parent_category_id 
where cc.id is null
;
/*
Индексы:
1.Составной индекс(parent_category_id,name)
2.parent_category_id

3.parent_category_id
*/


