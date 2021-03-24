<?php
class Presence extends MappingTableAbstract
{
    //Properties of table lapresence
    protected int $idlapresence;
    protected int $ampm;
    protected string $date;
    protected string $heuredebut;
    protected string $heurefin;
    protected int $lecode_idlecode;
    protected int $linscription_idlinscription;
    
        //Getters 
        public function getIdlapresence():int {
            return $this->idlapresence;
        }
        public function getAmpm():int {
            return $this->ampm;
        }
        public function getDate():string{
            return $this->date;
        }
        public function getHeuredebut():string {
            return $this->heuredebut;
        }
        public function getHeurefin(): string {
            return $this->heurefin;
        }
        public function getLecode_idlecode():int {
            return $this->lecode_idlecode;
        }
        public function getLinscription_idlinscription():int {
            return $this->linscription_idlinscription;
        }
        //Setters
        
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

