<?php


interface ManagerTableInterface {
	
	public function selectAllActif():array;	
	public function selectAllNonActif():array;	
	public function selectAll():array;
	
	public function selectOneActif():array;
	public function selectOneNonActif():array;	
	public function selectOne():array;
	
	// La valeur de retour pour les méthodes qui ne sont pas des SELECT sera un array contenant le résultat de l'execute (booléen qui indique si la requête a été un succès) et en deuxième position un message d'erreur en cas d'échec
	public function insert():array;
	
	public function update():array;
	
	public function deleteActif():array; // Met en inactif	
	public function deleteNonActif():array; // Suppression définitive
	
	
}
