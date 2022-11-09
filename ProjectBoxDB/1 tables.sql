use ProjectBoxDB
go 

drop table if exists ProjectBox
go 

create table dbo.ProjectBox(
    ProjectBoxId int not null identity primary key,
    OrganizationName varchar(50) not null constraint ck_ProjectBox_OrganizationName_cannot_be_blank check(OrganizationName <> ''),
    ProjectType varchar(100) not null constraint ck_ProjectBox_ProjectType_must_be_one_of_the_selling_choices check(ProjectType in('Candy pillow kit', 'Felt doll kit', 'Throw blanket kit', 'Felt travel game kit', 'Stuffed initial kit')),
    OrderAmount int not null constraint ck_ProjectBox_OrderAmount_must_be_between_15_and_1000 check(OrderAmount between 15 and 1000),
    OrderDate datetime not null constraint ck_ProjectBox_OrderDate_must_be_between_february_5_2010_and_the_current_date check(OrderDate between '2010-02-05' and getdate()),
    DeliveryDate datetime constraint ck_ProjectBox_DeliveryDate_must_be_between_february_5_2010_and_the_current_date check(DeliveryDate between '2010-02-05' and getdate()),
    Paid bit not null default 1,
--AS The data you gave that each project type has a different price and each amount has a different calculation would 
--AS involve writing 20 case statements, that really isn't to fit into one table. I changed it that all projects cost $5/piece.
    TotalPrice as case
                     when OrderAmount <= 50 then 7 * OrderAmount
                     when OrderAmount between 51 and 200 then 5 * OrderAmount
                     when OrderAmount between 201 and 350 then (5 - 1.5) * OrderAmount
                     when OrderAmount > 350 then (5 - 2.25) * OrderAmount
                  end,
    ReferredBy varchar(50) not null,
    Survey varchar(50) not null constraint ck_ProjectBox_Survey_must_be_one_of_the_survey_options check(Survey in('extremely unsatisfied',  'partially satisfied', 'satisfied', 'very satisfied', 'extremely satisfied', 'no rating', 'not rated yet')),
    constraint ck_ProjectBox_DeliveryDate_is_correct_estimated_date 
        check((OrderAmount <= 50 and DeliveryDate = dateadd(day, 7, OrderDate))      
           or ((OrderAmount between 51 and 200) and (DeliveryDate between dateadd(day, 7, OrderDate) and dateadd(day, 14, OrderDate)))
           or ((OrderAmount between 201 and 350) and (DeliveryDate between dateadd(day, 14, OrderDate) and dateadd(day, 21, OrderDate)))
           or (OrderAmount > 350 and (DeliveryDate between dateadd(day, 21, OrderDate) and dateadd(day, 31, OrderDate)))
        )          
)
go