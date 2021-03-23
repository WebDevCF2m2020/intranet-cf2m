<?php

class Conger extends MappingTableAbstract
{//ouverture de la classe
    // propriete de la table conger
    protected int $idleconger;
    protected string $lejour;
    protected int $laperiode;


    //Getters


    /**
     * Get the value of idlecode
     */ 
    public function getidLeconger(): int
    {
        return $this->idleconger;
    }

    /**
     * Get the value of lejour
     */ 
    public function getLejour():string
    {
        return $this->lejour;
    }

    /**
     * Get the value of laperiode
     */ 
    public function getLaperiode():int
    {
        return $this->laperiode;
    }

    //SETTER
    

    /**
     * Set the value of idlecode
     *
     * @return  int
     */ 
    public function setidLeconger(int $idleconger):void
    {
        $idleconger = (int)$idleconger;
        //checking the value user is not equal 0 and is number
        if(($idleconger === 0) && (ctype_digit($idleconger))){  
            trigger_error("This can not equal to zero!!",E_USER_NOTICE);
            //checking is not empty
        }else if(empty($idleconger)){
            trigger_error('The session ID is not valide',E_USER_NOTICE);
        }else{
            $this->idleconger = $idleconger;
        
    }
    }

    /**
     * Set the value of lintitule
     *
     * @return  self
     */ 
    public function setLejour(string $lejour):string
    {
        $verifDate = new DateTime($lejour);
        //checking the name for injection in db with strip_tags and trim
        // checking is not empty
        if(empty($lejour)){
            trigger_error("The name can't be empty",E_USER_NOTICE);
            //checking the format
        } else if (!is_object($verifDate)){
            trigger_error("The format is not valide",E_USER_NOTICE);
        }else{

        $this->lejour = $lejour;
        }
    }

    /**
     * Set the value of Ladescription
     *
     * @return  self
     */ 
    public function setLaperiode(int $laperiode):int
    {
        $laperiode = (int) $laperiode;
            //Checking if is zero value.  
            if(($laperiode === 0) && (ctype_digit($laperiode))){  
                trigger_error("This can not equal to zero!!",E_USER_NOTICE);   
            }elseif(empty($laperiode)){
                //Checking if not empty.
                trigger_error("This can not be empty!!",E_USER_NOTICE); 
            }else{
                $this->laperiode = $laperiode;                    
            }

    }
}// femeture de la classe