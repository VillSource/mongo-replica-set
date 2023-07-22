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


// var config = {
//     "_id": "mgset",
//     "version": 1,
//     "members": [
//         {
//             "_id": 1,
//             "host": "mongo1:50001"
//         }
//     ]
// };
// rs.initiate(config, { force: true });
