<?php

namespace Tapera\RKATSite\Repository;

use Tapera\RKATSite\Domain\User;

class UserRepository
{
    private \PDO $connection;

    public function __construct(\PDO $connection)
    {
        $this->connection = $connection;
    }

    public function save(User $user): User
    {
        $statement = $this->connection->prepare("INSERT INTO users(role, username, password, direktorat_name, email) VALUES ('user', ?, ?, ?, ?)");
        $statement->execute([
            $user->username,
            $user->password,
            $user->direktorat_name,
            $user->email
        ]);
        return $user;
    }

    public function update(User $user): User
    {
        $statement = $this->connection->prepare("UPDATE users SET username = ?, password = ?, direktorat_name = ?, email = ? WHERE id = ?");
        $statement->execute([
            $user->username,
            $user->password,
            $user->direktorat_name,
            $user->email,
            $user->id
        ]);
        return $user;
    }

    public function findById(string $id): ?User
    {
        $statement = $this->connection->prepare("SELECT id, role, username, password, direktorat_name, email FROM users WHERE id = ?");
        $statement->execute([$id]);

        try {
            if ($row = $statement->fetch()) {
                $user = new User();
                $user->id = $row['id'];
                $user->role = $row['role'];
                $user->username = $row['username'];
                $user->password = $row['password'];
                $user->direktorat_name = $row['direktorat_name'];
                $user->email = $row['email'];
                return $user;
            } else {
                return null;
            }
        } finally {
            $statement->closeCursor();
        }
    }

    public function findByUsername(string $username): ?User
    {
        $statement = $this->connection->prepare("SELECT id, role, username, password, direktorat_name, email FROM users WHERE username = ?");
        $statement->execute([$username]);

        try {
            if ($row = $statement->fetch()) {
                $user = new User();
                $user->id = $row['id'];
                $user->role = $row['role'];
                $user->username = $row['username'];
                $user->password = $row['password'];
                $user->direktorat_name = $row['direktorat_name'];
                $user->email = $row['email'];
                return $user;
            } else {
                return null;
            }
        } finally {
            $statement->closeCursor();
        }
    }

    // public function deleteAll(): void
    // {
    //     $this->connection->exec("DELETE from users");
    // }
}