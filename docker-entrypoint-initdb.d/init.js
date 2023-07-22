db.createUser(
    {
        user: "anirut",
        pwd: "anirut",
        roles: [
            {
                role: "read",
                db: "test"
            }
        ]
    }
);
