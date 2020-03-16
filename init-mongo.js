db.createUser(
    {
        user : "hexaadmin"
        pwd : "hexapassword"
        roles : [
            {
                role : "readWrite",
                db : "hexa_mongo"
            }
        ]
    }
)
