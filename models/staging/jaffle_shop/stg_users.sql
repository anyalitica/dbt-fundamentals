
select
    id as user_id,
    email,
    role,
    created_at,
    updated_at

from {{source('jaffle_shop', 'users')}}