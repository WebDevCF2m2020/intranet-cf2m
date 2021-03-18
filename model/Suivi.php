<?php
class Suivi extends MappingTableAbstract
{
    //propriete de la table Suivi

  protected int $idlesuivi;
  protected string $ladate;
  protected string $ponctualite;
  protected string $evolution;
  protected string $test;
  protected string $attitude;
  protected int $linscription_idlinscription;


    // Getters


    /* 
    Get the value of idlesuivi
    */
  
    public function getIdlesuivi(): int
    {
        return $this->idlesuivi;
    }

    /* 
    Get the value of ladate
    */

    public function getLadate(): string
    {
        return $this->ladate;
    }

    /* 
    Get the value of ponctualite
    */

    public function getPonctualite(): string
    {
        return $this->ponctualite;
    }

    /* 
    Get the value of evolution
    */

    public function getEvolution(): string
    {
        return $this->evolution;
    }

    /* 
    Get the value of test
    */

    public function getTest(): string
    {
        return $this->test;
    }  

    /* 
    Get the value of attitude
    */

    public function getAttitude(): string
    {
        return $this->attitude;
    }

    /* 
    Get the value of linscription_idlinscription
    */

   public function getLinscription_idlinscription(): int
    {
        return $this->linscription_idlinscription;
    }


    // Setters


    /**
     * Idlesuivi Setter
     *
     * @return  int
     */ 

    public function setIdlesuivi(int $idlesuivi): void
    {
        $idlesuivi = (int)$idlesuivi;
        //checking is not null
        if ($idlesuivi === 0){  
            trigger_error("The ID le suivi is not valide",E_USER_NOTICE);
        } else {
            $this->idlesuivi = $idlesuivi;
        }
    }

    /**
     * Date Setter
     *
     * @return  
     */ 

    public function setDate(string $date): void
    {
        $verifDate = new DateTime($date)
        //checking is not empty
        if (empty($date)){  
            trigger_error("The date is not valide",E_USER_NOTICE);
        //cheking the format
        } else if (!is_object($verifDate)){
            trigger_error("The format is not valide",E_USER_NOTICE)
        } else {
            $this->date = $date;
        }
    }

    /**
     * Ponctualite Setter
     *
     * @return  
     */ 

    public function setPonctualite(string $ponctualite): void
    {
        $ponctualite = strip_tags(trim($ponctualite));
        //checking is not empty
        if (empty($ponctualite)){  
            trigger_error("The ponctualite is not valide",E_USER_NOTICE);
        //cheking the string length
        } else if (strlen($ponctualite > 512)){
            trigger_error("The ponctualite cannot exceed 512 characters",E_USER_NOTICE);
        } else {
            $this->ponctualite = $ponctualite;
        }
    }

    /**
     * Evolution Setter
     *
     * @return  
     */ 

    public function setEvolution(string $evolution): void
    {
        $evolution = strip_tags(trim($evolution));
        //checking is not empty
        if (empty($evolution)){  
            trigger_error("The evolution is not valide",E_USER_NOTICE);
        //cheking the string length
        } else if (strlen($evolution > 512)){
            trigger_error("The evolution cannot exceed 512 characters",E_USER_NOTICE);
        } else {
            $this->evolution = $evolution;
        }
    }

    /**
     * Test Setter
     *
     * @return  
     */ 

    public function setTest(string $test): void
    {
        $test = strip_tags(trim($test));
        //checking is not empty
        if (empty($test)){  
            trigger_error("The test is not valide",E_USER_NOTICE);
        //cheking the string length
        } else if (strlen($test > 512)){
            trigger_error("The test cannot exceed 512 characters",E_USER_NOTICE);
        } else {
            $this->test = $test;
        }
    }

    /**
     *  Attitude Setter 
     *
     * @return  
     */ 

    public function setAttitude(string $attitude): void
    {
        $attitude = strip_tags(trim($attitude));
        //checking is not empty
        if (empty($attitude)){  
            trigger_error("The attitude is not valide",E_USER_NOTICE);
        //cheking the string length
        } else if (strlen($attitude > 512)){
            trigger_error("The attitude cannot exceed 512 characters",E_USER_NOTICE);
        } else {
            $this->attitude = $attitude;
        }
    }

    /**
     * Linscription_idlinscription Setter 
     *
     * @return  int
     */ 

    public function setLinscription_idlinscription(int $linscription_idlinscription):void
    {
        $linscription_idlinscription = (int)$linscription_idlinscription;
        //checking the value user is not equal 0 after conversion
        if(($ilinscription_idlinscription === 0)){  
            trigger_error("The inscription ID is not valide",E_USER_NOTICE);
        //checking is not empty
        }else{
            $this->linscription_idlinscription = $linscription_idlinscription;
        }
    }  


}
?>