--Если учитывать только тех с кем дружит клиент, и не проверять дружат ли с ним
select contacts.ID, contacts.NAME, cr.cnt
from contacts
join (
  select COUNT(1) as cnt, friend_1
  from contact_relations cr
  group by cr.friend_1
  having cnt > 5
) cr on contacts.ID = cr.friend_1

--Взаимная дружба
select contacts.ID, contacts.NAME, cr.cnt
from contacts
join (
  select COUNT(1) as cnt, cr1.friend_1
  from contact_relations cr1
         join contact_relations cr2 on cr1.friend_1 = cr2.friend_2 and cr1.friend_2 = cr2.friend_1
  group by cr1.friend_1
  having cnt > 5
) cr on contacts.ID = cr.friend_1