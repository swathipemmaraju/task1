select Property.[Name], Property.Id, OwnerProperty.OwnerId, PropertyHomeValue.[Value], PropertyHomeValue.IsActive
from Property inner join OwnerProperty on OwnerProperty.PropertyId = Property.Id 
inner join PropertyHomeValue on PropertyHomeValue.PropertyId = Property.Id																		  
where OwnerProperty.OwnerId = 1426
and PropertyHomeValue.IsActive = 1