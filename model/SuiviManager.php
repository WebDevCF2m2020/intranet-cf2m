<?php
/**
* Class SuiviManager
*/

class SuiviManager extends ManagerTableAbstract implements ManagerTableInterface {
    // Select all of the Suivi table
    public function selectAll() : array {
        $sql = "SELECT * FROM lesuivi;";
        $query = $this -> db -> query ($sql);
    // Return when there if you have min one result
    if ($query->rowCount()){
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }
    // Return the array 
    return [];
    }

}