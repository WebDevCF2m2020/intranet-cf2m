<?php


class Utilisateur extends MappingTableAbstract
{

    protected int $idutilisateur;
    protected string $lenomutilisateur;
    protected string $lemotdepasse;
    protected string $lenom;
    protected string $leprenom;
    protected string $lemail;
    protected string $luniqueid;
    protected int $actif;

    /**
     *   GETTERS
     */
    public function getIdUtilisateur(): int
    {
        return $this->idutilisateur;
    }

    public function getLeNomUtilisateur(): string
    {
        return $this->lenomutilisateur;
    }

    public function getLeMotDePasse(): string
    {
        return $this->lemotdepasse;
    }

    public function getLeNom(): string
    {
        return $this->lenom;
    }

    public function getLePrenom(): string
    {
        return $this->leprenom;
    }

    public function getLEmail(): string
    {
        return $this->lemail;
    }

    public function getLUniqueId(): string
    {
        return $this->luniqueid;
    }

    public function getActif(): int
    {
        return $this->actif;
    }


    public
    function setLeMotDePasse(string $lemotdepasse): void
    {
        if (isset($lemotdepasse)
            && strlen($lemotdepasse < 255)) {
            $this->lemotdepasse = strval(password_hash($lemotdepasse, PASSWORD_DEFAULT));
        } else {
            trigger_error("Le format du champ -Mot de passe- n'est pas valable");
        }
    }


    public function setLeNom(string $lenom): void
    {
        if (isset($lenom)
            && is_string($lenom)
            && strlen($lenom) <= 45) {
            $this->lenom = $lenom;
        } else {
            trigger_error("Le format du champ -Nom- n'est pas valable");
        }
    }

    public function setLePrenom(string $leprenom): void
    {
        if (isset($leprenom)
            && is_string($leprenom)
            && strlen($leprenom) <= 45) {
            $this->leprenom = $leprenom;
        } else {
            trigger_error("Le format du champ -Prénom- n'est pas valable");
        }
    }

    public
    function setLeNomUtilisateur(string $leprenom, string $lenom): void
    {
        $this->lenomutilisateur = strtolower($leprenom) . '.' . strtolower($lenom);
    }

    public
    function setLEmail(string $lemail): void
    {
        if (isset($lemail)
            && strlen($lemail) <= 180
            && (filter_var($lemail, FILTER_VALIDATE_EMAIL))) {
            $this->lemail = $lemail;
        } else {
            trigger_error("Le format du champ -E-mail- n'est pas valable");
        }
    }

    public
    function setLUniqueId(): void
    {
            $this->luniqueid = uniqid('key',true);
    }


    function setActif(int $actif): void
    {
        if (isset($actif)
            && in_array($actif, [0,1])) {
            $this->actif = $actif;
        } else {
            trigger_error("Vous n'avez pas choisi le statut du champ -Actif- ");
        }
    }


}
