<?php
namespace App\Models;

use PDO;

class User extends Model {

    // Exemple de méthode (requête SQL) pour obtenir des données
    public function getUsers() {
        $stmt = $this->db->query("SELECT * FROM test.userinfo");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}