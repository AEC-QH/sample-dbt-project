select
    date_trunc('month', first_order_at) as signup_month,
    count(*) as new_customers

from {{ ref('customers') }}
group by 1
