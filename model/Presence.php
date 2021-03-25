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
        public function setIdlapresence(int $idlapresence):void {
            if(empty($idlapresence)){
                trigger_error("Votre id ne peut être vide",E_USER_NOTICE);
            }
            else{
                $this->idlapresence=$idlapresence;
            }
            
        }
        public function setAmpm(int $ampm): void {
            //Placer ici une condition si l'argument est différent des 2 valeurs possibles(matin ou après midi) signifier une erreur à l'utilisateur
            if(!$ampm===0||$ampm===1){
            //Vérifier avec les collègues et superviseur si ce type de message d'erreur et viable et si ma vérification est la bonne
                trigger_error("Les seules valeurs possibles sont matin ou après-midi, choisissez l'une des 2",E_USER_NOTICE);
            }
            //Sinon modier la valeur de ampm avec l'argument
            else{
                $this->ampm=$ampm;
            }
            
        }
        public function setDate(int $date):void {
        $regex = preg_grep("/^(\d{4})-(\d{2})-([\d]{2})$/",[$date]);
        if(empty($regex)){
            trigger_error("Format de date non valide",E_USER_NOTICE);
        }
        else{
            $this->date = $theNewsDate;
        }
            
        }
        
}
