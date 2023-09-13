var seconden = 125000000; 
var secondenPerMinuut = 60;
var minutenPerUur = 60;
var urenPerDag = 24;
var dagenPerJaar = 365;
var uren = Math.floor(seconden / (secondenPerMinuut * minutenPerUur));
var dagen = Math.floor(uren / urenPerDag);
var jaren = Math.floor(dagen / dagenPerJaar);

println("Aantal seconden: " + seconden);
println("Uren: " + uren);
println("Dagen: " + dagen);
println("Jaren: " + jaren);

//komt uit op: 34722 uren, 1446 dagen, 3 jaren.//
