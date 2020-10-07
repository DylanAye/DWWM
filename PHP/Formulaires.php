<?php
    $nameErr = $firstnameErr = $genderErr = $birthdateErr = $zipcodeErr = $addressErr = $cityErr = $emailErr = $demandErr = $questionErr = $boxErr = "";  //Variables permettant de retourner une erreur
    $name = $_POST['nom'];              //Variables qui prennent l'entrée du champs
    $firstname = $_POST["prenom"];
    $gender = $_POST["sexe"];
    $birthdate = $_POST["naissance"];
    $zipcode = $_POST["cp"];
    $address = $_POST["adresse"];
    $city = $_POST["ville"];
    $email = $_POST["email"];
    $demand = $_POST["demande"];
    $question = $_POST["question"];
    $box = $_POST["box"];

    $verif = 0;                 //Variable permettant de vérifier le formulaire

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
       
        if (empty($_POST["nom"]))       //Si le champs est vide, on ajoute 1 à la varibable de vérification
        {
            //$nameErr = "Name is required <br> ";
            $verif++;
            // echo $nameErr;
        } 
        else                            //Sinon on entre dans cette nouvelle condition
        {
            if(preg_match("/[a-zA-Z]/",$name))      //Si la regex est respectée
            {
                //Le script continue
            }
            else
            {
                $verif++;                           //Sinon, on ajoute 1 à la varible de vérification
            }
        }
        

        if (empty($_POST["prenom"])) 
        {
            // $firstnameErr = "Firstname is required <br>";
            $verif++;
            // echo $firstnameErr;
        } else 
        {
            if(preg_match("/[a-zA-Z]/",$firstname))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["sexe"])) 
        {
            //$genderErr = "Gender is required <br>";
            $verif++;
            //echo $genderErr;
        } else 
        {

        }

        if (empty($_POST["naissance"])) 
        {
            //$birthdateErr = "Birthdate is required <br>";
            $verif++;
            //echo $birthdateErr;
        } else 
        {
            if(preg_match("/^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{2,4}$/",$birthdate))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["cp"])) 
        {
            $zipcodeErr = "Zipcode is required <br>";
            $verif++;
            echo $zipcodeErr;
        } else 
        {
            if(preg_match("/^[0-9]{5}$/",$zipcode))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["adresse"])) 
        {
            //$addressErr = "Address is required <br>";
            $verif++;
            //echo $addressErr;
        } else 
        {
            if(preg_match("/^[a-zA-Z0-9,\-' ]+$/",$address))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["ville"])) 
        {
            //$cityErr = "City is required <br>";
            $verif++;
            //echo $cityErr;
        } else 
        {
            if(preg_match("/^[a-zA-Z0-9,\-' ]+$/",$city))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["email"])) 
        {
            //$emailErr = "Email is required <br>";
            $verif++;
            //echo $emailErr;
        } else 
        {
            if(preg_match("/^[a-z0-9.-_]+@[a-z0-9.-_]+\.[a-z]{2,6}$/",$email))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["demande"])) 
        {
            //$demandErr = "This is required <br>";
            $verif++;
            //echo $demandErr;
        } else 
        {

        }

        if (empty($_POST["question"])) 
        {
            //$questionErr = "Question is required <br>";
            $verif++;
            //echo $questionErr;
        } else 
        {
            if(preg_match("/^[a-zA-Z0-9.\"'()-_$,;:!?\/%^€*]+$/",$question))
            {

            }
            else
            {
                $verif++;
            }
        }

        if (empty($_POST["box"])) 
        {
            //$demandErr = "Box is required <br>";
            $verif++;
            //echo $demandErr;
        } else
        
        
        //Si la variable de vérification est toujours à 0, on valide le formulaire
        if ($verif==0)
        {
            //echo "Tout est ok !!!";
            header("Location:tableau.php?");
        }
        else
        {
            echo 'Formulaire incorrect';
        }
    }
?>