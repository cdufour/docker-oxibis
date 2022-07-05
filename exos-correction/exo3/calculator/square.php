<?php
// on récupère le paramètre d'url "num"
$n = $_GET["num"];

// echo gettype($n); renvoie "string"
// il faut convertir $n en en valeur numérique
$n2 = intval($n);
// echo gettype($n2); renvoie "integer"

if ($n2 == 0) {
  echo '<span style="color:red">Valeur non calculable</span>';
} else {
  // carré potientiellement calculable
  // Contrainte. Calcul du carré que si
  // nombre saisi strictement inférieur à 1000
  if ($n2 < 1000) {
    $s = $n2 * $n2; // calcul du carré
    echo "Le carré de " . $n2 . " vaut " . $s;
  } else {
    echo "Je n'accepte pas de calculer le carré d'une valeur supérieure à 1000 !";
  }
}
?>

<p>
  <a href="index.html">Retour au formulaire</a>
</p>
