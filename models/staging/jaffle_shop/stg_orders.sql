select
    id as orderid,
    user_id as customer_id,
    order_date,
    status

from {{source('jaffle_shop', 'orders')}}