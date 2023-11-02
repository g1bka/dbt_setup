--{% macro margin_percentage(revenue, purchase_cost) %}
--    (
--    ROUND(SAFE_DIVIDE(({{ revenue }} - {{ purchase_cost }}), ({{ revenue }}*100),2))
--    )
--{% endmacro %}


--{% macro margin_percent(revenue, purchase_cost, precision=2) %}
--   ROUND( SAFE_DIVIDE( ({{ revenue }} - {{ purchase_cost }}) , {{ revenue }} ) , {{ precision }})
--{% endmacro %}
