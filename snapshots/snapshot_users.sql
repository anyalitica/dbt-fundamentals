{% snapshot snapshot_users %}

{{
    config(
      target_database='personal-projects-375809',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

SELECT
    *
FROM 
    {{ source('jaffle_shop', 'users') }}

{% endsnapshot %}