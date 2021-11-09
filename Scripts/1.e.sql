select Property.[Name], Person.FirstName, Person.LastName, PropertyRentalPayment.[Amount], 
TenantPaymentFrequencies.Name
from Property inner join OwnerProperty on OwnerProperty.PropertyId = Property.Id 
inner join PropertyRentalPayment on PropertyRentalPayment.PropertyId = Property.Id
inner join TenantPaymentFrequencies on TenantPaymentFrequencies.Id = PropertyRentalPayment.FrequencyType
inner join TenantProperty on TenantProperty.PropertyId = Property.Id
inner join Tenant on TenantProperty.TenantId = Tenant.Id
inner join Person on Person.Id = Tenant.Id
where OwnerProperty.OwnerId = 1426
--and TenantProperty.IsActive = 1
and Tenant.IsActive = 1