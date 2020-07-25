{% snapshot snapshot_employee %}

{{
    config(
      target_schema='snapshot',
      unique_key='BUSINESSENTITYID',

      strategy='timestamp',
      updated_at='DATETIME',
    )
}}

    SELECT * FROM {{ source('AdventureWorks_HumanResources','EMPLOYEE' )}}
    
{% endsnapshot %}