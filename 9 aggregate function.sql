use sakila;

select count(*) from payment where amount=2.99;

select * from payment;

select amount,count(*) from payment group by amount;

select customer_id,sum(amount) from payment group by customer_id;

select customer_id,sum(amount) from payment where amount>3 group by customer_id;

select customer_id,count(amount), payment_date,month(payment_date )
 from payment where month(payment_date)=5 group by customer_id;
 
 -- you need to find out max amount of transaction ,Avg transaction & total taansaction amount done by each stafe
 
 select staff_id, max(amount),avg(amount),sum(amount) from payment where staff_id/2=0 group by staff_id;
 
 -- get the amount & total transaction for each amount only payments to 
 -- the staff_Id 1 & the total no of transaction should be >30
 
 select amount, count(*)  from payment where staff_id=1 group by amount having count(*)>30;
 
 -- find out the custors of around ave amount & the total amount spent for in each month for staff_id 1,2
  -- find out the custors of around ave amount & the total amount spent in each month,year for staff_id 1,2
  
  select avg(amount),sum(amount),month(payment_date) as month
  from payment where staff_id in(1,2) group by month;
 
   select  avg(amount),sum(amount),year(payment_date),
   month(payment_date) from payment where staff_id in(1,2) group by year(payment_date),month(payment_date);
