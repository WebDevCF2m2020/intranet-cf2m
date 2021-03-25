<?php

class Droit extends MappingTableAbstract
{
     // propriete de la table Session
    protected int $idledroit;
    protected string $lintitule;
    protected string $ladescription;
    protected int $actif;


    //Getters


    /**
     * Get the value of idledroit
     */ 
    public function getidLedroit(): int
    {
        return $this->idledroit;
    }

    /**
     * Get the value of lintitule
     */ 
    public function getLintitule():string
    {
        return $this->lintitule;
    }

    /**
     * Get the value of Ladescription
     */ 
    public function getLadescription():string
    {
        return $this->ladescription;
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
     * Set the value of idlecode
     *
     * @return  int
     */ 
    public function setidLedroit(int $idledroit):void
    {
        $idledroit = (int)$idledroit;
        //checking the value user is not equal 0 and is number
        if(($id_user_room === 0) && (ctype_digit($idledroit))){  
            trigger_error("This can not equal to zero!!",E_USER_NOTICE);
            //checking is not empty
        }else if(empty($idlecode)){
            trigger_error('The session ID is not valide',E_USER_NOTICE);
        }else{
            $this->idledroit = $idledroit;
        
    }
    }

    /**
     * Set the value of lintitule
     *
     * @return  self
     */ 
    public function setLintitule(string $lintitule):string
    {
        //checking the name for injection in db with strip_tags and trim
        $lintitule = strip_tags(trim($lintitule));
        // checking is not empty
        if(empty($lintitule)){
            trigger_error("The name can't be empty",E_USER_NOTICE);
            //checking lenght name is not superieur for 5 caratcters
        }else if (strlen($lintitule) > 5){
            trigger_error("The lenght of your name cannot exceed 5 characters!!",E_USER_NOTICE);
        }else{

        $this->lintitule = $lintitule;
        }
    }

    /**
     * Set the value of Ladescription
     *
     * @return  self
     */ 
    public function setLadescription(string $ladescription):string
    {
        //checking for injection in db
        $ladescription = strip_tags(trim($ladescription));
        //checking is empty
        if(empty($ladescription)){
            trigger_error("The acronym can't be empty",E_USER_NOTICE);
            //checking the lenght acronyme
        }else if (strlen($ladescription) > 300){
            trigger_error("The lenght of the acronym cannot exceed 300 characters!!",E_USER_NOTICE);
        }else{

        $this->ladescription = $ladescription;

        }
    }

    
    /**
     * Set the value of actif
     *
     * @return  self
     */ 
    public function setActif(int $actif):void
    {
        $actif= (int)$actif;
        //checking is empty
        if(isset($actif)&& in_array($actif,[0,1])){
            $this->actif = $actif;
        }else{
            trigger_error('The actif session cannot empty!!!',E_USER_NOTICE);
        }
    }
}