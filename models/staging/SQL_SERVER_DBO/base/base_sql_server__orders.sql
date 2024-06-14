with
    src_orders as (select * from {{ source("sql_server_dbo", "orders") }}),

    renamed_casted as (
        select
            order_id,
            shipping_service,
            created_at,
            user_id,
            address_id,
            order_total,
            estimated_delivery_at,
            order_cost,
            shipping_cost,
            status,
            delivered_at,
            tracking_id,
            promo_id,
            _fivetran_deleted,
            _fivetran_synced
        from src_orders
    )

select *
from renamed_casted
