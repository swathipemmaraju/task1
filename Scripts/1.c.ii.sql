select Property.[Name], Property.Id,PropertyFinance.Yield
from Property inner join OwnerProperty on OwnerProperty.PropertyId = Property.Id 
 inner join PropertyFinance on PropertyFinance.PropertyId = Property.Id
where OwnerProperty.OwnerId = 1426