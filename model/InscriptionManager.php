<?php 

class InscriptionManager extends ManagerTableAbstract implements ManagerTableInterface
{
    //Select All from table lerole
    public function selectAllFromLinscription(): array {
        $sql = "SELECT * FROM linscription;";
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