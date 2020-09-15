<?php
    $nameErr = $emailErr = $genderErr = $websiteErr = "";
    $name = $email = $gender = $comment = $website = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (empty($_POST["nom"])) 
        {
            $nameErr = "Name is required";
        } else 
        {
            $name = test_input($_POST["nom"]);
        }

        if (empty($_POST["prenom"])) 
        {
            $nameErr = "Firstname is required";
        } else 
        {
            $name = test_input($_POST["prenom"]);
        }

        if (empty($_POST["sexe"])) 
        {
            $nameErr = "Gender is required";
        } else 
        {
            $name = test_input($_POST["sexe"]);
        }

        if (empty($_POST["naissance"])) 
        {
            $nameErr = "Birthdate is required";
        } else 
        {
            $name = test_input($_POST["naissance"]);
        }

        if (empty($_POST["cp"])) 
        {
            $nameErr = "Zipcode is required";
        } else 
        {
            $name = test_input($_POST["cp"]);
        }

        if (empty($_POST["adresse"])) 
        {
            $nameErr = "Address is required";
        } else 
        {
            $name = test_input($_POST["adresse"]);
        }

        if (empty($_POST["ville"])) 
        {
            $nameErr = "City is required";
        } else 
        {
            $name = test_input($_POST["ville"]);
        }

        if (empty($_POST["email"])) 
        {
            $emailErr = "Email is required";
        } else 
        {
            $email = test_input($_POST["email"]);
        }

        if (empty($_POST["demande"])) 
        {
            $website = "This is required";
        } else 
        {
            $website = test_input($_POST["demande"]);
        }

        if (empty($_POST["comment"])) 
        {
            $comment = "";
        } else 
        {
            $comment = test_input($_POST["comment"]);
        }

    }
?>