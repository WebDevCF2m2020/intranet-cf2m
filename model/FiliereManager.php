<?php
/**
* Class FiliereManager
*/

class FiliereManager extends ManagerTableAbstract implements ManagerTableInterface {
    // Select all of the Filiere table
    public function selectAll() : array {
        $sql = "SELECT * FROM lafiliere;";
        $query = $this -> db -> query ($sql);
    // Return when there if you have min one result
    if ($query->rowCount()){
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
    // Return the array 
    return [];
    }

}