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
     * @return  self
     */ 
    public function setIdlasession(int $idlasession)
    {
        $this->idlasession = $idlasession;

        return $this;
    }

    /**
     * Set the value of lenom
     *
     * @return  self
     */ 
    public function setLenom(string $lenom):string
    {
        $this->lenom = $lenom;

        return $this;
    }

    /**
     * Set the value of lacronyme
     *
     * @return  self
     */ 
    public function setLacronyme(string $lacronyme)
    {
        $this->lacronyme = $lacronyme;

        return $this;
    }

    /**
     * Set the value of lenumero
     *
     * @return  self
     */ 
    public function setLenumero(int $lenumero)
    {
        $this->lenumero = $lenumero;

        return $this;
    }

    /**
     * Set the value of letype
     *
     * @return  self
     */ 
    public function setLetype(int $letype)
    {
        $this->letype = $letype;

        return $this;
    }

    /**
     * Set the value of debut
     *
     * @return  self
     */ 
    public function setDebut(string $debut)
    {
        $this->debut = $debut;

        return $this;
    }

    /**
     * Set the value of fin
     *
     * @return  self
     */ 
    public function setFin(string $fin)
    {
        $this->fin = $fin;

        return $this;
    }

    /**
     * Set the value of lafiliere_idlafiliere
     *
     * @return  self
     */ 
    public function setLafiliere_idlafiliere(int $lafiliere_idlafiliere)
    {
        $this->lafiliere_idlafiliere = $lafiliere_idlafiliere;

        return $this;
    }

    /**
     * Set the value of actif
     *
     * @return  self
     */ 
    public function setActif(int $actif)
    {
        $this->actif = $actif;

        return $this;
    }
}// femeture de la classe