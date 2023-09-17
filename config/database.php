<?php

function getDatabaseConfig(): array
{
    return [
        "database" => [
            "test" => [
                "url" => "mysql:host=localhost:3306;dbname=rkatsite_tapera_test",
                "username" => "root",
                "password" => "root"
            ],
            "prod" => [
                "url" => "mysql:host=localhost:3306;dbname=rkatsite_tapera",
                "username" => "root",
                "password" => "root"
            ]
        ]
    ];
}
