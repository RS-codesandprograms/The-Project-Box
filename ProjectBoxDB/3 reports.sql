--1.	Please show a list of undelivered orders. I want to see the oldest orders first. 
select *
from ProjectBox p 
where p.DeliveryDate is null 
order by p.OrderDate 
--2.	Please show the most and lease effective marketing strategy.
select top 1 HighestMarketing = count(*), p.ReferredBy
from ProjectBox p 
group by p.ReferredBy
order by HighestMarketing desc

select top 1 LowestMarketing = count(*), p.ReferredBy
from ProjectBox p 
group by p.ReferredBy
order by LowestMarketing
--3.	Please show a list of orders where the delivery time was longer than promised to the customer. 
--This list should be ordered by order size, from least to greatest. This is something I always need to know.
select p.OrganizationName, ExtraTimeTookToDeliver = datepart(day,p.DeliveryDate) - datepart(day,p.EstimatedDeliveryDate)
from ProjectBox p 
where p.DeliveryDate > p.EstimatedDeliveryDate
order by p.OrderAmount
--4.	Please show how many of each rating we received. I also need a list of orders that were rated below satisfied. 
select NumSurvey = count(*), p.Survey
from ProjectBox p 
group by p.Survey
order by NumSurvey

select *
from ProjectBox p 
where p.Survey in('extremely unsatisfied', 'partially satisfied')
--5.	Please show the number of kits we sold per type of kit. Show the least selling kit first.
select NumSold = count(*), p.ProjectType
from ProjectBox p 
group by p.ProjectType
order by NumSold
