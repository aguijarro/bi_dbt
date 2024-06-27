with source as (
    select *
    from {{ source('adventure_works_ds', 'address') }}
),
renamed as (
    select *
    from source
)
select *
from renamed
