SELECT customerid, Customer.firstname, customer.lastname, invoice.total 
FROM customer 
JOIN invoice ON customer.customerid = invoice.customerid
ORDER BY total desc
LIMIT 10;
