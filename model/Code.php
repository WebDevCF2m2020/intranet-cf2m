<?php

class Code extends MappingTableAbstract
{//ouverture de la classe
    // propriete de la table Session
    protected int $idlecode;
    protected string $lintitule;
    protected string $ladescription;


    //Getters


    /**
     * Get the value of idlecode
     */ 
    public function getidLecode(): int
    {
        return $this->idlecode;
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

    //SETTER
    

    /**
     * Set the value of idlecode
     *
     * @return  int
     */ 
    public function setidLecode(int $idlecode):void
    {
        $idlecode = (int)$idlecode;
        //checking the value user is not equal 0 and is number
        if(($id_user_room === 0) && (ctype_digit($idlecode))){  
            trigger_error("This can not equal to zero!!",E_USER_NOTICE);
            //checking is not empty
        }else if(empty($idlecode)){
            trigger_error('The session ID is not valide',E_USER_NOTICE);
        }else{
            $this->idlecode = $idlecode;
        
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
            //checking lenght name is not superieur for 45caratcters
        }else if (strlen($lintitule) >= 5){
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
        //checking is not empty
        if(empty($ladescription)){
            trigger_error("The acronym can't be empty",E_USER_NOTICE);
            //checking the lenght acronyme
        }else if (strlen($ladescription) >= 45){
            trigger_error("The lenght of the acronym cannot exceed 45 characters!!",E_USER_NOTICE);
        }else{

        $this->ladescription = $ladescription;

        }
    }

    
}// femeture de la classe