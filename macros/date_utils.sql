-- jinjas 
-- {{ use for variables or function}}
-- {% use for insert some logic , define macro%}

{% macro get_season(x) %}

CASE
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (3,4,5)
    THEN 'SPRINNG'
    WHEN MONTH(TO_TIMESTAMP({{x}})) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN'
    END 

{% endmacro %}


{% macro day_type(x) %}
CASE
    WHEN DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat', 'Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESSDAY'
    END
{% endmacro %}