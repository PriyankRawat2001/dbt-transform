with payments as(
    select * from {{ref("stg_payments")}}
)

select
    orderid,
    sum(amount) as total_amount
from payments 
group by orderid
having total_amount < 0