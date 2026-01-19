select
*
from {{ source('demo', 'bike') }}
-- for this kind of jinja write __then if for souce then source otherwise other and enter

limit 10