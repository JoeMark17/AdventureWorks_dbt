{% snapshot snapshot_person %}

{{
    config(
      target_schema='snapshot',
      unique_key='BUSINESSENTITYID',

      strategy='timestamp',
      updated_at='DATETIME',
    )
}}

    SELECT * FROM {{ source('AdventureWorks_Person','PERSON' )}}
    
{% endsnapshot %}