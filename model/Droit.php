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




}