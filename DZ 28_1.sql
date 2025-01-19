use `hillel-qauto`;

select * from user_profiles where name like "%am%" order by name asc;



select max(totalcost), car_brands.id, car_brands.title from expenses
inner join cars on expenses.carid=cars.id inner join car_brands on cars.carBrandId=car_brands.id where car_brands.id=1;



select count(id), carBrandId from car_models where carBrandId in (1,2) group by carBrandId;
select count(car_models.id), carBrandId, car_brands.title  from car_models 
inner join car_brands on car_models.carBrandId=car_brands.id where carBrandId in (1,2) group by carBrandId;



select count(userid), car_brands.title, car_models.title from cars 
inner join car_brands on cars.carBrandId=car_brands.id
inner join car_models on cars.carModelId=car_models.id group by carModelId;
select count(userid), car_brands.title from cars 
inner join car_brands on cars.carBrandId=car_brands.id group by carBrandId;


select distinct name, user_profiles.userId from user_profiles
inner join users on user_profiles.userId=users.id
inner join cars on users.id=cars.userId order by name asc;

