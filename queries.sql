""" Author @MEET MEHTA """


### These queries are answers for sql-practice.com questions ###


SELECT first_name, last_name FROM patients where allergies is NULL;

select first_name from patients where first_name like 'c%'

select first_name, last_name from patients where weight between 100 and 120

update patients set allergies = 'NKA' Where allergies IS NULL;

select concat(first_name," ", last_name) as full_name from patients;

select first_name, last_name, province_name from patients join provinces 
on provinces.province_id=patients.province_id;

select distinct YEAR(birth_date) from patients order by birth_date ASC;

select distinct first_name from patients group by first_name having count(first_name)=1;

select patient_id, first_name from patients where first_name like 's%s' 
and length(first_name)>=5;

select patient_id, first_name from patients where first_name like 's___%s'

select patients.patient_id, first_name, last_name,primary_diagnosis from patients 
JOIN admissions ON admissions.patient_id = patients.patient_id
where primary_diagnosis='Dementia';

select patient_id,first_name,last_name from patients order by first_name asc,last_name desc;

select(SELECT COUNT(*) FROM patients WHERE gender='M') as male_count,
(SELECT COUNT(*) FROM patients WHERE gender='F') as female_count; 

select first_name,last_name, allergies from patients where allergies in('Penicillin', 'Morphine')
order by allergies, first_name, last_name;

select patient_id, primary_diagnosis from admissions
group by patient_id,primary_diagnosis
having count(primary_diagnosis)> 1;

select city,count(patient_id) from patients group by city order by count(patient_id) desc;





















