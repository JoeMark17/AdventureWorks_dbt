{% snapshot snapshot_address %}

{{
    config(
      target_schema='snapshot',
      unique_key='ADDRESSID',

      strategy='timestamp',
      updated_at='DATETIME',
    )
}}

    SELECT * FROM {{ source('AdventureWorks_Person','ADDRESS' )}}
    
{% endsnapshot %}