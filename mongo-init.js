db.auth('admin', 'password')

db = db.getSiblingDB('chessMEAN')

db.createUser(
        {
            user: "admin",
            pwd: "password",
            roles: [
                {
                    role: "readWrite",
                    db: "chessMEAN"
                }
            ]
        }
);
