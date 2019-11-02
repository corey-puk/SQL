DELIMITER ++
DROP PROCEDURE IF EXISTS purchaseSummary;
CREATE PROCEDURE purchaseSummary(purchaseNum INT, OUT oneScoop INT, OUT twoScoop INT, OUT threeScoop INT)
BEGIN
	declare one int;
    declare two int;
    declare three int;

	declare cursorFinished INT DEFAULT FALSE;
    
    	DECLARE num_s CURSOR FOR
		select count(s.scoopid)
		from conesinpurchase c join scoopsincone s on c.coneid=s.coneId
		where c.purchaseid = purchaseNum
		group by c.coneid;

	declare continue handler for not found
		set cursorFinished = TRUE;
        
OPEN num_s;

fetch num_s into one;
set oneScoop = one;
fetch num_s into two;
set twoScoop = two;
fetch num_s into three;
set threeScoop = three;

read_loop: Loop

fetch num_s into one;
if one = 1 then
insert 1 into one;
elseif one = 2 then
insert 1 into two;
elseif one = 3 then
insert 1 into three;
else insert 0 into one;

fetch num_s into two;
elseif two = 1 then
insert 1 into one;
elseif two = 2 then 
insert 1 into two;
elseif two = 3 then
insert 1 into threeSchoop;
else insert 0 into two;

fetch num_s into three;
elseif three = 1 then 
insert 1 into one;
elseif three = 2 then
insert 1 into two;
else three = 3 then
insert 1 into three;
else insert 0 into three;

if cursorFinished THEN
	leave read_loop;
END IF;

end loop;

close num_s;

SELECT oneScoop, twoScoop, threeScoop;

END ++
DELIMITER ;
