-- # ruleid: T1016
box.schema.user.grant('guest', 'read,write,execute,create,drop', 'universe')
