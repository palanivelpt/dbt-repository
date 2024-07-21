{% snapshot orders_snapshot %}

{{
    config(
      target_database='manifest-access-428617-g7',
      target_schema='snapshots',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='created_at',
    )
}}

select * from {{ source('thelook_ecommerce', 'orders') }}

{% endsnapshot %}