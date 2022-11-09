use ProjectBoxDB
go
delete ProjectBox
go 

insert ProjectBox(OrganizationName, ProjectType, OrderAmount, OrderDate, DeliveryDate, ReferredBy, Survey)
--AS Many dates had to be fixed in order to fit into the guidelines you gave on delivery date.
select 'Bnos Yisroel', 'Candy pillow kit', 351, '03/4/2017', '03/25/2017',  'Phonebook', 'Extremely satisfied'
union select 'Hillel Academy of Thorndale', 'Throw blanket kit', 57, '05/12/2019', '05/22/2019', 'online', 'partially satisfied'
union select 'Camp Funtime', 'Felt Travel game kit', 150, '04/15/2021', '04/29/2021', 'word of mouth', 'satisfied'
union select 'Camp Twirl', 'Stuffed initial kit', 300, '05/10/2019', '05/30/2019', 'magazine ad', 'extremely satisfied'
union select 'BYD', 'Candy pillow kit', 100, '10/17/2020', '10/24/2020', 'online', 'satisfied'
union select 'Bais Chinuch', 'Felt doll kit', 350, '11/21/2021', '12/09/21', 'word of mouth', 'partially satisfied'
union select 'Camp Rina', 'Throw blanket kit', 570, '08/01/2017', '08/23/2017', 'magazine ad', 'very satisfied'
union select 'Camp SummerTime', 'Felt Travel game kit', 75, '04/25/2012', '05/07/2012',  'online', 'very satisfied'
union select 'Camp CK', 'Stuffed initial kit', 35, '05/25/2020', '06/01/2020', 'word of mouth', 'extremely unsatisfied'
union select 'Camp Candy Land', 'Candy pillow kit', 20, '08/25/2021', '09/01/2021', 'other', 'satisfied'
union select 'French School', 'Stuffed initial kit', 200, '01/17/2020', '01/29/2020', 'Phonebook', 'very satisfied'
union select 'Camp Sparkle', 'Throw blanket kit', 45, '02/15/2019', '2/22/2019', 'online', 'extremely satisfied'
union select 'The Dullis County Middle School', 'Felt Travel game kit', 250, '08/21/2022', null, 'online', 'not rated yet'
union select 'CherryHill High', 'Candy pillow kit', 250, '05/23/2015', '06/12/2015', 'online', 'extremely satisfied'
union select 'Camp Oodle', 'Stuffed initial kit', 400, '04/26/2020', '05/20/2020', 'magazine ad', 'very satisfied'
union select 'Camp Dazzle', 'Candy pillow kit', 30, '06/15/2022', '06/22/2022', 'word of mouth', 'very satisfied'
union select 'Best Travel Camp Ever', 'Felt Travel game kit', 25, '09/01/2022', null, 'online', 'not rated yet'
union select 'Camp BVC', 'Stuffed initial kit', 100, '01/01/2021', '1/12/2021', 'phonebook', 'no rating'
union select 'Bigs and Little Organization', 'Candy pillow kit', 500, '10/01/2022', null,  'online', 'not rated yet'
