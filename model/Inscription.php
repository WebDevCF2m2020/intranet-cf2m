<?php 

class Inscription extends MappingTableAbstract 
{
    //Properties of table linscription 

    protected int $idlinscription;
    protected string $debut;
    protected string $fin;
    protected int $lutilisateur_idlutilisateur;
    protected int $lasession_idlasession;
    protected int $actif;
}