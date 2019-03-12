select c1.ID, c1.NAME, c2.ID, c2.NAME
from contact_relations cr1
       join contact_relations cr2 on cr1.friend_1 = cr2.friend_2 and cr1.friend_2 = cr2.friend_1
       join contacts c1 on cr1.friend_1 = c1.ID
       join contacts c2 on cr1.friend_2 = c2.ID
where cr1.friend_1 < cr1.friend_2