%dw 2.0
output application/java
---
payload map {
	Company    : $.Company,
	Email      : $.Email,
	FirstName  : $.FirstName,
	LastName   : $.LastName
}