select * from customer

select * from product

select * from sales

select * from product as P
inner join sales as S
on p.product_id=S.product_id

select p.product_id as "product_id",product_name,category,s.product_id as "sale_product_id",ship_mode,customer_id,quantity from product as p inner join sales as S on p.product_id=S.product_id

select * from customer as C
inner join Sales as S
on C.customer_id=S.customer_id

select C.customer_id as "id_customer",customer_name,age,country,city,state,S.customer_id as "sales_id",s.ship_mode,s.sales,s.profit from customer as C inner join sales as S on C.customer_id=S.customer_id

select p.product_id as "product_id",product_name,category,s.product_id as "sale_product_id",ship_mode,customer_id,quantity from product as p right  join sales as S on p.product_id=S.product_id

select * from customer as C
left join Sales as S
on C.customer_id=S.customer_id
	
select c.customer_id as "customerid", c.customer_name,c.segment,c.age, c.country,c.first_name,c.last_name,s.customer_id as "sales_id",s.ship_mode,s.sales,s.quantity,s.discount,s.profit from customer as c left join sales as S on c.customer_id=s.customer_id

select * from product as P
full join sales as S
on p.product_id=S.product_id

select p.product_id as "id_product",p.category,p.sub_category,p.product_name,s.product_id as "sales_id",s.order_date,s.ship_date,s.ship_mode,s.customer_id,s.sales from product as p full join sales as S on p.product_id=s.product_id

select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity,
p.product_name	from customer as c 
join sales as s
on s.customer_id = c.customer_id
join product as p
on p.product_id = s.product_id