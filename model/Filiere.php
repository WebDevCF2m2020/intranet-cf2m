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
}