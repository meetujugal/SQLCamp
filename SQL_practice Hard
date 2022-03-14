Join admissions, physicians and patients table and show patient_id, firts_name, last_name and attending physician speciality such that physicians fist name is 'Lisa'
and primary diagnosis is 'Dementia'

select patients.patient_id,
patients.first_name as patient_first_name,
patients.last_name as patient_last_name,
physicians.specialty as attending_physician_speciality
from patients
join physicians on physicians.physician_id=admissions.attending_physician_id
join admissions on admissions.patient_id=patients.patient_id
where admissions.primary_diagnosis='Dementia'
and physicians.first_name='Lisa';

Show patient_id, weight, height, isObese from the patients table.
Display isObese as a boolean 0 or 1.
Obese is defined as weight(kg)/(height(m)2) >= 30.
weight is in units kg.
height is in units cm.

select patient_id, weight, height, 
(case
   when weight*10000/power(height,2)>=30 then
   1
 else
  0
end)as isObese
from patients;


Show all of the patients grouped into weight groups.
Show the total amount of patients in each weight group.
Order the list by the weight group decending.
For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.

SELECT COUNT(*) AS patients_in_group, weight/10*10 AS weight_group FROM patients
  GROUP BY weight_group
  ORDER BY weight_group desc;
