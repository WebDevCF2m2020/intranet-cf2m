<?php

class DroitManager extends ManagerTableAbstract implements ManagerTableInterface
{
    //put your query for selected all datas in this table
    public function selectAll(): array {
        $sql = "SELECT * FROM ledroit;";
        $query = $this->db->query($sql);
        
    }
}