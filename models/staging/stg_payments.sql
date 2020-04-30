select 
    ID as id,
    "orderID" as order_id,
    amount / 100 as amount,
    created as created_at
from {{ source('stripe', 'payment') }}