select 
    id as payment_id,
    orderid,
    amount / 100 as amount,
    paymentmethod,
    status, 
    created as created_at
    
from {{source('jaffle_shop', 'payment')}}   
