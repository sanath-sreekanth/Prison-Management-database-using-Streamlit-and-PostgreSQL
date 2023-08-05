select prisoner_name,prisoner_id,staff_id,staff_name
from staff
full join prisoners
on staff.staff_id=prisoners.prisoner_id