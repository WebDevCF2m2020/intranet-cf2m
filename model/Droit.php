<?php

class Droit extends MappingTableAbstract
{
     // propriete de la table Session
    protected int $idledroit;
    protected string $lintitule;
    protected string $ladescription;
    protected int $actif;

    //constructor
    public function __construct(array $tab)
    {
        $this->hydrate($tab);
    }

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
        return $this->Ladescription;
    }

    /**
     * Get the value of actif
     */ 
    public function getActif():int
    {
        return $this->actif;
    }


}