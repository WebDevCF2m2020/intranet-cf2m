<?php 

class Inscription extends MappingTableAbstract 
{
    //Properties of table linscription 

    protected int $idlinscription;
    protected string $debut;
    protected string $fin;
    protected int $lutilisateur_idlutilisateur;
    protected int $lasession_idlasession;
    protected int $actif=1;

    

    //Getters 

    

    /**
     * Get the value of idlinscription
     */ 
    public function getIdlinscription():int
    {
        return $this->idlinscription;
    }

    /**
     * Get the value of debut
     */ 
    public function getDebut():string
    {
        return $this->debut;
    }

    /**
     * Get the value of fin
     */ 
    public function getFin():string
    {
        return $this->fin;
    }

    /**
     * Get the value of lutilisateur_idlutilisateur
     */ 
    public function getLutilisateur_idlutilisateur():int
    {
        return $this->lutilisateur_idlutilisateur;
    }

    /**
     * Get the value of lasession_idlasession
     */ 
    public function getLasession_idlasession():int
    {
        return $this->lasession_idlasession;
    }

    /**
     * Get the value of actif
     */ 
    public function getActif():int
    {
        return $this->actif;
    }

    //Setters 

    /**
     * Set the value of idlinscription
     *
     * @return  self
     */ 
    public function setIdlinscription(int $idlinscription):void
    {
        $idlinscription = (int) $idlinscription;
        if(empty($idlinscription)){
            trigger_error("Votre id ne peut être 0 !",E_USER_NOTICE);
        }
        else{
            $this->idlinscription = $idlinscription;
        }
    }

    /**
     * Set the value of debut
     *
     * @return  self
     */ 
    public function setDebut(string $debut):void
    {
        $regex = preg_grep("/^(\d{4})-(\d{2})-([\d]{2})$/",[$debut]);
        if(empty($regex)){
            trigger_error("Format de date non valide",E_USER_NOTICE);
        }
        else{
            $this->debut = $debut;
        }
        
    }

    /**
     * Set the value of fin
     *
     * @return  self
     */ 
    public function setFin(string $fin):void
    {
        $regex = preg_grep("/^(\d{4})-(\d{2})-([\d]{2})$/",[$fin]);
        if(empty($regex)){
            trigger_error("Format de date non valide",E_USER_NOTICE);
        }
        else{
            $this->fin = $fin;
        }
        
    }

    /**
     * Set the value of lutilisateur_idlutilisateur
     *
     * @return  self
     */ 
    public function setLutilisateur_idlutilisateur(int $lutilisateur_idlutilisateur):void
    {
        $lutilisateur_idlutilisateur = (int) $lutilisateur_idlutilisateur;
        if(empty($lutilisateur_idlutilisateur)){
            trigger_error("L'id de l'utilisateur ne peut être 0 !",E_USER_NOTICE);
        }
        else{
            $this->lutilisateur_idlutilisateur = $lutilisateur_idlutilisateur;
        }
        
    }

    /**
     * Set the value of lasession_idlasession
     *
     * @return  self
     */ 
    public function setLasession_idlasession(int $lasession_idlasession):void
    {
        $lasession_idlasession = (int) $lasession_idlasession;
        if(empty($lasession_idlasession)){
            trigger_error("L'id de session ne peut être 0 !", E_USER_NOTICE);
        }
        else{
            $this->lasession_idlasession = $lasession_idlasession;
        }
        
    }

    /**
     * Set the value of actif
     *
     * @return  self
     */ 
    public function setActif(int $actif):void
    {
        $actif = (int) $actif;
        if($actif < 0 || $actif > 1){
            trigger_error("Le champ actif doit être soit 0, soit 1",E_USER_NOTICE);
        }
        else{
        $this->actif = $actif;
        }
        
    }
}

    

