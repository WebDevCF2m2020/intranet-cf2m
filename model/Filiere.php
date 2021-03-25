<?php 

class Filiere extends MappingTableAbstract
{
    //Properties of table lafiliere

    protected int $idlafiliere;
    protected string $lenom;
    protected string $lacronyme;
    protected string $lacouleur;
    protected string $lepicto;
    protected int $actif=1;

    //Getters 

    

    /**
     * Get the value of idlafiliere
     */ 
    public function getIdlafiliere():int
    {
        return $this->idlafiliere;
    }

    /**
     * Get the value of lacronyme
     */ 
    public function getLacronyme():string
    {
        return $this->lacronyme;
    }

    /**
     * Get the value of lacouleur
     */ 
    public function getLacouleur():string
    {
        return $this->lacouleur;
    }

    /**
     * Get the value of lepicto
     */ 
    public function getLepicto():string
    {
        return $this->lepicto;
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
     * Set the value of idlafiliere
     *
     * @return  self
     */ 
    public function setIdlafiliere(int $idlafiliere):void
    {
        $idlafiliere = (int) $idlafiliere;
        if(empty($idlafiliere)){
            trigger_error("L'id de la filière ne peut être 0 !",E_USER_NOTICE);
        }
        else{
            $this->idlafiliere = $idlafiliere;
        }
        
    }

    /**
     * Set the value of lenom
     *
     * @return  self
     */ 
    public function setLenom(string $lenom):void
    {
        $lenom = strip_tags(trim($lenom));
        if(empty($lenom)){
            trigger_error("Le champ nom ne peut être vide",E_USER_NOTICE);
        }
        else if(strlen($lenom) > 45){
            trigger_error("Le nom ne peut dépasser 45 caractères",E_USER_NOTICE);
        }
        else{
            $this->lenom = $lenom;
        }
        
    }

    /**
     * Set the value of lacronyme
     *
     * @return  self
     */ 
    public function setLacronyme(string $lacronyme):void
    {
        $lacronyme = strip_tags(trim($lacronyme));
        if(empty($lacronyme)){
            trigger_error("Le champ acronyme ne peut être vide",E_USER_NOTICE);
        }
        else if(strlen($lacronyme) > 10){
            trigger_error("L'acronyme ne peut dépasser 10 caractères",E_USER_NOTICE);
        }
        else{
            $this->lacronyme = $lacronyme;
        }
        
    }

    /**
     * Set the value of lacouleur
     *
     * @return  self
     */ 
    public function setLacouleur(string $lacouleur):void
    {
        $lacouleur = strip_tags(trim($lacouleur));
        if(strlen($lacouleur) > 10){
            trigger_error("La couleur ne peut dépasser 10 caractères",E_USER_NOTICE);
        }
        else{
            $this->lacouleur = $lacouleur;
        }
        
    }

    /**
     * Set the value of lepicto
     *
     * @return  self
     */ 
    public function setLepicto(string $lepicto):void
    {
        $lepicto = strip_tags(trim($lepicto));
        if(strlen($lepicto) > 45){
            trigger_error("Le picto ne peut dépasser 45 caractères");
        }
        else{
            $this->lepicto = $lepicto;
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