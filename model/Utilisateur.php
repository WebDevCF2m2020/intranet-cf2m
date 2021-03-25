<?php


class Utilisateur extends MappingTableAbstract
{

    protected int $id_utilisateur;
    protected string $le_nom_utilisateur;
    protected string $le_mot_de_passe;
    protected string $le_nom;
    protected string $le_prenom;
    protected string $l_email;
    protected string $l_unique_id;
    protected int $actif;

    /**
     *   GETTERS
     */
    public function getIdUtilisateur(): int
    {
        return $this->id_utilisateur;
    }

    public function getLeNomUtilisateur(): string
    {
        return $this->le_nom_utilisateur;
    }

    public function getLeMotDePasse(): string
    {
        return $this->le_mot_de_passe;
    }

    public function getLeNom(): string
    {
        return $this->le_nom;
    }

    public function getLePrenom(): string
    {
        return $this->le_prenom;
    }

    public function getLEmail(): string
    {
        return $this->l_email;
    }

    public function getLUniqueId(): string
    {
        return $this->l_unique_id;
    }

    public function getActif(): int
    {
        return $this->actif;
    }

    /**
     *   SETTERS
     */

    // CLO : J'ai mis une limite de 100 caracs à la longueur du mdp, cela n'étant pas décidé ?
    public
    function setLeMotDePasse(string $le_mot_de_passe): void
    {
        if (isset($le_mot_de_passe)
            && strlen($le_mot_de_passe < 100)) {
            $this->le_mot_de_passe = strval(password_hash($le_mot_de_passe, PASSWORD_DEFAULT));
        } else {
            trigger_error(`Le format du champ "Mot de passe" n'est pas valable`);
        }
    }

    public function setLeNom(string $le_nom): void
    {
        if (isset($le_nom)
            && is_string($le_nom)
            && strlen($le_nom) <= 45) {
            $this->le_nom = $le_nom;
        } else {
            trigger_error(`Le format du champ "Nom" n'est pas valable`);
        }
    }

    public function setLePrenom(string $le_prenom): void
    {
        if (isset($le_prenom)
            && is_string($le_prenom)
            && strlen($le_prenom) <= 45) {
            $this->le_prenom = $le_prenom;
        } else {
            trigger_error(`Le format du champ "Prénom" n'est pas valable`);
        }
    }

    public
    function setLeNomUtilisateur(string $le_prenom, string $le_nom): void
    {
        $this->l_unique_id = strtolower($le_prenom) . '.' . strtolower($le_nom);
    }

    public
    function setLEmail(string $l_email): void
    {
        if (isset($l_email)
            && strlen($l_email) <= 180
            && (filter_var($l_email, FILTER_VALIDATE_EMAIL))) {
            $this->l_email = $l_email;
        } else {
            trigger_error(`Le format du champ "E-mail" n'est pas valable`);
        }
    }

    public
    function setLUniqueId(): void
    {
            $this->l_unique_id = uniqid('key',true);
    }


    function setActif(int $actif): void
    {
        if (isset($actif)
            && in_array($actif, [0,1])) {
            $this->actif = $actif;
        } else {
            $this->actif = 1;
        }
    }


}