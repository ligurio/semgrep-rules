-- ruleid: tarantool_box_grant_guest_full_access
box.schema.user.grant('guest', 'read,write,execute,create,drop', 'universe')
