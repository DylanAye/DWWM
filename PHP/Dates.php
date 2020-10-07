<?php

//////////////////// 1 ////////////////////

    // $date = date('l d M Y');
    // echo $date;


//////////////////// 2 ////////////////////

    // $date = '14-07-2019';
    // $date1 = strtotime($date);
    // echo date('W',$date1);


//////////////////// 3 ////////////////////

    // $finFormation = new DateTime('05-03-2021');
    // $dateActuelle = new DateTime(date('d-m-Y'));

    // $interval = $dateActuelle->diff($finFormation);
    // echo $interval->format('%a jours');


//////////////////// 4 ////////////////////++TODO++

    // $dateActuelle = time('d-m-Y')
    // $finFormation = mktime


//////////////////// 5 ////////////////////

    // $dateActuelle = new DateTime(date('d-m-Y'));        //Date actuelle
    // $dateActuelle->modify('+1 Year');                   //Je rajoute une année (parce qu'on est en 2020 qui est une année bissextile)
    
    // while ($dateActuelle->format('L')==0)               //Tant que ma variable n'a pas le format 'L' (format pour les années bissextiles)
    // {
    //     $dateActuelle->modify('+1 Year');               //Ma variable prend une année
    // }
    // echo 'La prochaine année bissextile est '. $dateActuelle->format('Y');
    

//////////////////// 6 ////////////////////
    
// $verif = checkdate(17, 17, 2019);   //Si verif est true, la date est valide

// if ($verif == true)
// {
//     echo "La date est valide";
// }
// else
// {
//     echo "La date n'est pas valide";
// }


//////////////////// 7 ////////////////////++TODO++

// $date = new DateTime(date('d-m-Y'),new DateTimeZone('Europe/Paris'));
// echo $date-> format('Y-m-d H:i');



//////////////////// 8 ////////////////////

// $dateActuelle = new DateTime(date('d-m-Y'));
// $dateActuelle->modify('+1 Month');

// echo $dateActuelle->format('d-m-Y');




?>