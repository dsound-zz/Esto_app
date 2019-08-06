def remap_old_associations(table, association_column, associated_table)
  ActiveRecord::Base.connection.execute(<<~SQL)

WITH clients_id_map AS (
  SELECT clients.id, clients.old_address_id
  FROM clients
)
UPDATE addresses
SET addressable_id = clients_id_map.id, addressable_type = 'Client'
FROM clients_id_map
WHERE addresses.old_address_id = clients_id_map.old_address_id

SQL
end 

remap_old_associations :clients, :addressable_id, :addresses