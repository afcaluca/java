/*  Opdracht NamenLijst
 Probeer in de String[Array] namenLijst de namen Jesse en Kees te vinden met code.
 Als je een naam vindt dan moet je de naam + " gevonden!" printen. Anders "bestaat niet." printen;
 
 Wat gebeurt er en wat lukt er niet?
 
 *Bonus maak hiervan een methode die een naam als parameter krijgt
 
 */

String[] namenLijst = {"Piet", "Joris", "Ronald", "Billy", "Jesse", "Niek"};

String naam = "Kees";
Boolean gevonden = true;
for (int i = 0; i<6; i++) {
  if (namenLijst[i].equals(naam)) {
   gevonden = true;
  }
}

if(gevonden == false){
  println(naam + "Is niet gevonden");
}else{
println(naam + " gevonden");
}
