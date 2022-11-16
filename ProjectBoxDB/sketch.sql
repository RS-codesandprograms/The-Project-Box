/*
ProjectBox
    ProjectBoxId pk
	OrganizationName varchar(50) not null not blank
	ProjectType varchar(100) not null must be one of the choices
	OrderAmount int not null between 15 and 1000
	OrderDate datetime not null between 2/5/2010 current date
	DeliveryDate datetime between 2/5/2010 current date
	Paid bit not null default 1
	TotalPrice computed
	Survey varchar(100) not null must be one of the choices
	constraint for estimated deliver date
*/