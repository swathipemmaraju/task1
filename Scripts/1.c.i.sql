select Property.[Name] as PropertyName, Property.Id as PropertyId, [TenantProperty].PaymentAmount, 
[TenantPaymentFrequencies].Code as PaymentFrequency, [TenantProperty].StartDate, [TenantProperty].EndDate, 
(DATEDIFF(DAY, [TenantProperty].StartDate, [TenantProperty].EndDate)/
(CASE 
 WHEN [TenantPaymentFrequencies].Code = 'Weekly' THEN 7
 WHEN [TenantPaymentFrequencies].Code = 'Fortnightly' THEN 14
 WHEN [TenantPaymentFrequencies].Code = 'Monthly' THEN 30
END))*
[TenantProperty].PaymentAmount as TotalPaymentAmount
from Property inner join OwnerProperty on OwnerProperty.PropertyId = Property.Id 
inner join [TenantProperty] on [TenantProperty].PropertyId = Property.Id
inner join [TenantPaymentFrequencies] on [TenantPaymentFrequencies].Id = [TenantProperty].PaymentFrequencyId
where OwnerProperty.OwnerId = 1426


