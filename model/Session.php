<?php

class Section extends MappingTableAbstract
{//ouverture de la classe
    // propriete de la table Session
    protected int $idlasession;
    protected string $lenom;
    protected string $lacronyme;
    protected int $lenumero;
    protected int $letype;
    protected string $debut;
    protected string $fin;
    protected int $lafiliere_idlafiliere;
    protected int $actif;

    //constructor
    public function __construct(array $tab)
    {
        $this->hydrate($tab);
    }

    //Getters


    /**
     * Get the value of idlasession
     */ 
    public function getIdlasession(): int
    {
        return $this->idlasession;
    }

    /**
     * Get the value of lenom
     */ 
    public function getLenom():string
    {
        return $this->lenom;
    }

    /**
     * Get the value of lacronyme
     */ 
    public function getLacronyme():string
    {
        return $this->lacronyme;
    }

    /**
     * Get the value of lenumero
     */ 
    public function getLenumero():int
    {
        return $this->lenumero;
    }

    /**
     * Get the value of letype
     */ 
    public function getLetype():int
    {
        return $this->letype;
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
     * Get the value of lafiliere_idlafiliere
     */ 
    public function getLafiliere_idlafiliere():int
    {
        return $this->lafiliere_idlafiliere;
    }

    /**
     * Get the value of actif
     */ 
    public function getActif():int
    {
        return $this->actif;
    }

    //SETTER
    

    /**
     * Set the value of idlasession
     *
     * @return  int
     */ 
    public function setIdlasession(int $idlasession):void
    {
        $idlasession = (int)$idlasession;
        //checking the value user is not equal 0 and is number
        if(($id_user_room === 0) && (ctype_digit($idlasession))){  
            trigger_error("This can not equal to zero!!",E_USER_NOTICE);
            //checking is not empty
        }else if(empty($idlasession)){
            trigger_error('The session ID is not valide',E_USER_NOTICE);
        }else{
            $this->idlasession = $idlasession;
        
    }
    }

    /**
     * Set the value of lenom
     *
     * @return  self
     */ 
    public function setLenom(string $lenom):string
    {
        //checking the name for injection in db with strip_tags and trim
        $lenom = strip_tags(trim($lenom));
        // checking is not empty
        if(empty($lenom)){
            trigger_error("The name can't be empty",E_USER_NOTICE);
            //checking lenght name is not superieur for 45caratcters
        }else if (strlen($lenom) <= 45){
            trigger_error("The lenght of your name cannot exceed 45 characters!!",E_USER_NOTICE);
        }else{

        $this->lenom = $lenom;
        }
    }

    /**
     * Set the value of lacronyme
     *
     * @return  self
     */ 
    public function setLacronyme(string $lacronyme)
    {
        //checking for injection in db
        $lacronyme = strip_tags(trim($lacronyme));
        //checking is not empty
        if(empty($lacronyme)){
            trigger_error("The acronym can't be empty",E_USER_NOTICE);
            //checking the lenght acronyme
        }else if (strlen($lacronyme) <= 16){
            trigger_error("The lenght of the acronym cannot exceed 16 characters!!",E_USER_NOTICE);
        }else{

        $this->lacronyme = $lacronyme;

        }
    }

    /**
     * Set the value of lenumero
     *
     * @return  self
     */ 
    public function setLenumero(int $lenumero)
    {
        $lenumero= (int)$lenumero;
        //checking numero is not empty and is number
        if((empty($lenumero)) && (ctype_digit($lenumero))){  
            trigger_error('The number is not correct');
        }else{
        $this->lenumero = $lenumero;
    }
}

    /**
     * Set the value of letype
     *
     * @return  self
     */ 
    public function setLetype(int $letype)
    {
        $letype=(int)$letype;
        //checking $letype is not superieur 2 and is number
        if(($letype >2) && (ctype_digit($idlasession))){  
            trigger_error('The type is not correct');
            //checking is not empty
        }else if(empty($letype)){
            trigger_error('The type cannot empty!!!');
        }else{
        $this->letype = $letype;
        }
    }

    /**
     * Set the value of debut
     *
     * @return  self
     */ 
    public function setDebut(string $debut)
    {
        //preparation verification  with regex format date
        $regex = preg_grep("/^(\d{4})-(\d{2})-([\d]{2})$/",[$debut]);
        //checking is not empty
        if(empty($regex)){
            trigger_error("Invalid date format",E_USER_NOTICE);
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
    public function setFin(string $fin)
    {
        //preparation with regex for format date
        $regex = preg_grep("/^(\d{4})-(\d{2})-([\d]{2})$/",[$fin]);
        //checking is not empty
        if(empty($regex)){
            trigger_error("Invalid date format",E_USER_NOTICE);
        }
        else{
        $this->fin = $fin;
        }
    }

    /**
     * Set the value of lafiliere_idlafiliere
     *
     * @return  int
     */ 
    public function setLafiliere_idlafiliere(int $lafiliere_idlafiliere):void
    {
        $lafiliere_idlafiliere = (int)$lafiliere_idlafiliere;
        //checking is not empty and is number
        if(empty($lafiliere_idlafiliere) && ctype_digit($lafiliere_idlafiliere)){
            trigger_error("The foreign key session is not valid",E_USER_NOTICE);
        }else{
        $this->lafiliere_idlafiliere = $lafiliere_idlafiliere;
        }
    }

    /**
     * Set the value of actif
     *
     * @return  self
     */ 
    public function setActif(int $actif)
    {
        $actif= (int)$actif;
        //checking is not empty
        if(empty($actif)){
            trigger_error('The actif session cannot empty!!!',E_USER_NOTICE);
        }
        $this->actif = $actif;

    }//fermetur du setter actif
}// femeture de la classe