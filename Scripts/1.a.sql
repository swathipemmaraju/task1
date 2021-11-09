select Property.[Name], Property.Id
from Property inner join OwnerProperty on OwnerProperty.PropertyId = Property.Id 
where OwnerProperty.OwnerId = 1426