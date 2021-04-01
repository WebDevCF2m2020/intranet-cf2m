<?php 

class CongeManager extends ManagerTableAbstract implements ManagerTableInterface
{
    //Select All from table leconge
    public function selectAll(): array {
        $sql = "SELECT * FROM leconge;";
        $query = $this->db->query($sql);
        // if there is minimum 1 result
        if($query->rowCount()){
            return $query->fetchAll(PDO::FETCH_ASSOC);
        }else{
        // if not, return empty array
        return [];
        }
    }
}