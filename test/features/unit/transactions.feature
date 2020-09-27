@unit.transactions
@unit
Feature: Transaction goldens
  Background:
    Given a signing account with address "BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4" and mnemonic "awful drop leaf tennis indoor begin mandate discover uncle seven only coil atom any hospital uncover make any climb actor armed measure need above hundred"

  Scenario Outline: Application Transaction Tests (<operation>)
    When I build an application transaction with operation "<operation>", application-id <application-id>, sender "<sender>", approval-program "<approval-prog-file>", clear-program "<clear-prog-file>", global-bytes <global-bytes>, global-ints <global-ints>, local-bytes <local-bytes>, local-ints <local-ints>, app-args "<app-args>", foreign-apps "<foreign-apps>", foreign-assets "<foreign-assets>", app-accounts "<app-accounts>", fee <fee>, first-valid <first-valid>, last-valid <last-valid>, genesis-hash "<genesis-hash>"
    And sign the transaction
    Then the base64 encoded signed transaction should equal "<golden>"

    Examples:
      | operation | application-id | sender                                                     | approval-prog-file         | clear-prog-file            | global-bytes | global-ints | local-bytes | local-ints | app-args  | foreign-apps | foreign-assets | app-accounts                                                                                                          | fee  | first-valid | last-valid | genesis-hash      | golden                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
      | create | 0 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/loccheck.teal.tok | programs/one.teal.tok | 1 | 0 | 1 | 0 | str:test | 5555,6666 |  |  | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQLgQe82pAVOJgOJmbckwZr7iAM91EXVO3GHsEJNUmcPLeH3wS3GX7fviNb7VJQF8p5+/GA016E/Uy9itvCxfSwGjdHhujKRhcGFhkcQEdGVzdKRhcGFwxFsCIAIAASYFBWhlbGxvBXdyaXRlBWNoZWNrA2ZvbwNiYXI2GgAoEkAAKDYaACkSQAAXNhoAKhIiIitjIhJAABc2GgESECNAABMiKycEZiNAAAAjI0AABSIjQAAApGFwZmGSzRWzzRoKpGFwZ3OBo25icwGkYXBsc4GjbmJzAaRhcHN1xAUCIAEBIqNmZWXNBNKiZnbNIyiiZ2jEIDH9Ies45BCBGT7TTN87K4Poh0BUtH2cYYK+8N+SOOuDomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs |
      | create | 0 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok | programs/one.teal.tok | 1 | 0 | 1 | 0 | str:test |  |  | AAZFG7YLUHOQ73J7UR7TPJA634OIDL5GIEURTW2QXN7VBRI7BDZCVN6QTI | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQFfZoIv5LXF0X7AbFMvKtxXR53whL6KzEQouQSdKG5wIG6XRb97T7yo27IPiTsIyrWtv78UxndtRPe1jYC383QSjdHhujKRhcGFhkcQEdGVzdKRhcGFwxAUCIAEAIqRhcGF0kcQgADJTfwuh3Q/tP6R/N6Qe3xyBr6ZBKRnbULt/UMUfCPKkYXBnc4GjbmJzAaRhcGxzgaNuYnMBpGFwc3XEBQIgAQEio2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | create | 0 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/one.teal.tok | programs/zero.teal.tok | 1 | 0 | 1 | 0 | str:test | 5555,6666 | 1000,2000 |  | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQI3AM7bbt6vSpjCMljzCRKsTdEfs+pCeUjz0s1AvX7ztsGBXOrdh5XlFU/+PRJdsp6YsxX0yTSxNXn9pANVQFwWjdHhujaRhcGFhkcQEdGVzdKRhcGFwxAUCIAEBIqRhcGFzks0D6M0H0KRhcGZhks0Vs80aCqRhcGdzgaNuYnMBpGFwbHOBo25icwGkYXBzdcQFAiABACKjZmVlzQTSomZ2zSMoomdoxCAx/SHrOOQQgRk+00zfOyuD6IdAVLR9nGGCvvDfkjjrg6Jsds0jMqNzbmTEIAn70nYsCPhsWua/bdenqQHeZnXXUOB+jFx2mGR9tuH9pHR5cGWkYXBwbA== |
      | create | 0 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/one.teal.tok | programs/zero.teal.tok | 1 | 0 | 1 | 0 | str:test | 5555,6666 | 3000 |  | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQCD6/s4HjAOho9LbjAYdqld2rHQfLWC+Cl2HkKcF2scl+JUAPaR9AhisHE3O7Ld5/MtI4Zl2jujHR7IKQNBiPwWjdHhujaRhcGFhkcQEdGVzdKRhcGFwxAUCIAEBIqRhcGFzkc0LuKRhcGZhks0Vs80aCqRhcGdzgaNuYnMBpGFwbHOBo25icwGkYXBzdcQFAiABACKjZmVlzQTSomZ2zSMoomdoxCAx/SHrOOQQgRk+00zfOyuD6IdAVLR9nGGCvvDfkjjrg6Jsds0jMqNzbmTEIAn70nYsCPhsWua/bdenqQHeZnXXUOB+jFx2mGR9tuH9pHR5cGWkYXBwbA== |
      | update | 456 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok | programs/loccheck.teal.tok | 0  | 0  | 0  | 0  | str:test |  |  | AAZFG7YLUHOQ73J7UR7TPJA634OIDL5GIEURTW2QXN7VBRI7BDZCVN6QTI | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQHNbuCglt4vyeDjPkFRDDpOym0K1GKyHjgr3e8hm+9MzrDIhzHIvUbNVYyU4G4X+UoLhrHHBVWYaIpNVD//VmgejdHhujKRhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEAIqRhcGF0kcQgADJTfwuh3Q/tP6R/N6Qe3xyBr6ZBKRnbULt/UMUfCPKkYXBpZM0ByKRhcHN1xFsCIAIAASYFBWhlbGxvBXdyaXRlBWNoZWNrA2ZvbwNiYXI2GgAoEkAAKDYaACkSQAAXNhoAKhIiIitjIhJAABc2GgESECNAABMiKycEZiNAAAAjI0AABSIjQAAAo2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | update | 456 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok | programs/loccheck.teal.tok | 0  | 0  | 0  | 0  | str:test | 5555,6666 | 1000,2000 | AAZFG7YLUHOQ73J7UR7TPJA634OIDL5GIEURTW2QXN7VBRI7BDZCVN6QTI | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQAIwDqqWiU9X64Gs9i3kDjkhaOfH/as8PrRZ8WYniLMmM/OR0bpnS/wQkoCO7LQ7JNVOFO12fyAWqRxUJZf9IgqjdHhujqRhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEAIqRhcGFzks0D6M0H0KRhcGF0kcQgADJTfwuh3Q/tP6R/N6Qe3xyBr6ZBKRnbULt/UMUfCPKkYXBmYZLNFbPNGgqkYXBpZM0ByKRhcHN1xFsCIAIAASYFBWhlbGxvBXdyaXRlBWNoZWNrA2ZvbwNiYXI2GgAoEkAAKDYaACkSQAAXNhoAKhIiIitjIhJAABc2GgESECNAABMiKycEZiNAAAAjI0AABSIjQAAAo2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | update | 456 | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4 | programs/zero.teal.tok | programs/loccheck.teal.tok | 0  | 0  | 0  | 0  | str:test | 5555,6666 | 3000 |  | 1234 | 9000 | 9010 | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQNk4/vG1hicylEt2W15yM0Et6VXEG+F3VtCOuOb0WfYWwhXQS6hKxMLBhU5KZBmz3mJUtnTvxFXM+NUr8Id5TwSjdHhujaRhcGFhkcQEdGVzdKRhcGFuBKRhcGFwxAUCIAEAIqRhcGFzkc0LuKRhcGZhks0Vs80aCqRhcGlkzQHIpGFwc3XEWwIgAgABJgUFaGVsbG8Fd3JpdGUFY2hlY2sDZm9vA2JhcjYaACgSQAAoNhoAKRJAABc2GgAqEiIiK2MiEkAAFzYaARIQI0AAEyIrJwRmI0AAACMjQAAFIiNAAACjZmVlzQTSomZ2zSMoomdoxCAx/SHrOOQQgRk+00zfOyuD6IdAVLR9nGGCvvDfkjjrg6Jsds0jMqNzbmTEIAn70nYsCPhsWua/bdenqQHeZnXXUOB+jFx2mGR9tuH9pHR5cGWkYXBwbA== |
      | call        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           |            | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQJIHH5XZSlICTW3xOEHpnQfguLb9dhNjnPZay9UGT8FZr+ig6XjnBher3QR4HDZmwg+3Ei5bPySgTb+5yVLRhwOjdHhuiqRhcGFhkcQEdGVzdKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | call        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       |            |            |   | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQIucoXp/ThFO4/An6dmp4oYVPojvyZZWYqn7nkKNfnm6qd/TXeu3qiPTEwrTEmhtU5qLGF3Ch+iDZeI6RmH24wujdHhuiKRhcGFhkcQEdGVzdKRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEIDH9Ies45BCBGT7TTN87K4Poh0BUtH2cYYK+8N+SOOuDomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs |
      | call        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           | 7777,8888           | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQEbhKgBScIWg4Cq9jLfSIE+LvH4hJSVGfU6ikR75waHFgIOy1Ut2dwdvkumHuiGzvJ0O0/ouMxnycqCyW49rWw6jdHhui6RhcGFhkcQEdGVzdKRhcGFzks0eYc0iuKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | optin        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           |            | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQMypTBsWPAGF/F+sRjlwu1M2lQt92+5WkXdlI2yJ/0MphvycAl0EwWDD03+qlLV0AC4frbNU69rBa5xHxhDpEAmjdHhui6RhcGFhkcQEdGVzdKRhcGFuAaRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | optin        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       |            |            |   | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQDYJRwaGJQXUptvKniWLWA76S6625uwDALaLCtyC71v3duXeMTRHsUmK66dlz+dDXZqeOzSxSqIpcET76K088AGjdHhuiaRhcGFhkcQEdGVzdKRhcGFuAaRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEIDH9Ies45BCBGT7TTN87K4Poh0BUtH2cYYK+8N+SOOuDomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs |
      | optin        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           | 7777,8888           | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQCavYI5oOpW5EXknuiLsxx+/VXQeXaEO8COfnKsvmOQzA8hINpy9IdU0OB8R5mwjb4u6gHCSSyoNz9wQq1fZcQ+jdHhujKRhcGFhkcQEdGVzdKRhcGFuAaRhcGFzks0eYc0iuKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | clear        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           |            | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQFLY8ReCu7Fq8Aau17dnrVStv9Kb/klCgGrHVeE+qq+9/QlrxbgcVds7QtGbb8UcJg5ZkLDbGpywgHnEm99vCwKjdHhui6RhcGFhkcQEdGVzdKRhcGFuA6RhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | clear        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       |            |            |   | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQGTdRCNlPyXLg4I5jjR3wINHaEURqNNuFB3yYoLWyjRfDqDClct9wAXvBb5AWRSO9h3GiZpFlyTYEJCE3dG4FwqjdHhuiaRhcGFhkcQEdGVzdKRhcGFuA6RhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEIDH9Ies45BCBGT7TTN87K4Poh0BUtH2cYYK+8N+SOOuDomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs |
      | clear        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           | 7777,8888           | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQJG+3VRzlHS7JxGAEqLu8TUAprs/6+P5HHJZZ0JvNYslk8cJs4axUOZ8icZUWcbSNY290gzn4vzCb9+Kfn6sgAujdHhujKRhcGFhkcQEdGVzdKRhcGFuA6RhcGFzks0eYc0iuKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | closeout        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           |            | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQIlMCbGb64YcM/Vz+lnKOhAOF0X9PjnbqFS+6fLlyQQMy2BNRPBlbekH9t2wzkvtKXN+wF6qO7F3HvKRBBFLYgujdHhui6RhcGFhkcQEdGVzdKRhcGFuAqRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | closeout        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       |            |            |   | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQIHkUGhYd4FaUdMfbktftMfvG6n51l9MQEW1Atj/eJLGdvKRFeOp6hQjiXsI+YCG2SWifA5XtpGbHpxaJIb4DgKjdHhuiaRhcGFhkcQEdGVzdKRhcGFuAqRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEIDH9Ies45BCBGT7TTN87K4Poh0BUtH2cYYK+8N+SOOuDomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs |
      | closeout        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           | 7777,8888           | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQCgyXFm+653eOTGcswb0OPkF2NZe0nSZhSKBJzK+woWbo9dcl111qiR2xk3X0m21eTNynztPjvmloDKI10j/kAyjdHhujKRhcGFhkcQEdGVzdKRhcGFuAqRhcGFzks0eYc0iuKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | delete        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           |            | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQMwY2l//Y+mOccwFOp4HuK6vZRspq7jpzMkYRQIA16TPCrwBpmdS4JbcV0cbRR5+FwOzZd9aBGxKwSQX4B9dYgujdHhui6RhcGFhkcQEdGVzdKRhcGFuBaRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
      | delete        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       |            |            |   | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQM26fXCfQ8Ay/uwsOya/8iJ9J9DIAfTOus2KXduNgxB195ABBCjniPNramFogzTpkmoK6s+Whj+6gpDzj1ZoFwGjdHhuiaRhcGFhkcQEdGVzdKRhcGFuBaRhcGlkZKNmZWXNBNKiZnbNIyiiZ2jEIDH9Ies45BCBGT7TTN87K4Poh0BUtH2cYYK+8N+SOOuDomx2zSMyo3NuZMQgCfvSdiwI+Gxa5r9t16epAd5mdddQ4H6MXHaYZH224f2kdHlwZaRhcHBs |
      | delete        | 100             | BH55E5RMBD4GYWXGX5W5PJ5JAHPGM5OXKDQH5DC4O2MGI7NW4H6VOE4CP4     |                    |                 | 0            | 0           | 0           | 0          | str:test       | 5555,6666           | 7777,8888           | AAVDEAJ3NIYOG7XCRBKCJ3T5PUCVL2XASOP3NGX4NPPZ3UX6477PBG6E4Q,AADQIC4PMKRTFMHAAXYAFSGAUULDI2ABBIYVQJ6GZ5JHY6DJPHTU2SPHYM  | 1234          | 9000         | 9010  | Mf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464M= | gqNzaWfEQNRuI7jjkY7nVUFd+weVjF9vL80VLDDhOZTZ7Iu6gPpvMzgiaKhRWPw2GdvdggqyqAp6R71B0iNItmTKcS6ZhAmjdHhujKRhcGFhkcQEdGVzdKRhcGFuBaRhcGFzks0eYc0iuKRhcGF0ksQgACoyATtqMON+4ohUJO59fQVV6uCTn7aa/GvfndL+5/7EIAAHBAuPYqMysOAF8ALIwKUWNGgBCjFYJ8bPUnx4aXnnpGFwZmGSzRWzzRoKpGFwaWRko2ZlZc0E0qJmds0jKKJnaMQgMf0h6zjkEIEZPtNM3zsrg+iHQFS0fZxhgr7w35I464OibHbNIzKjc25kxCAJ+9J2LAj4bFrmv23Xp6kB3mZ111Dgfoxcdphkfbbh/aR0eXBlpGFwcGw= |
