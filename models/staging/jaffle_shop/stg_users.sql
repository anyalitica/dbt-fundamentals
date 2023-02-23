
SELECT
      id              AS user_id
    , email
    , role
    , created_at
    , updated_at

FROM
    {{source('jaffle_shop', 'users')}}