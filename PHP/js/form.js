//Formulaire

function fonction(formulaire)
{   
    var verif = 0;
    regexNom = /^[a-zA-Z]+$/;
    nom = formulaire.elements.nom.value
    if (regexNom.test(nom))
    {
        console.log('Nom correct !')
    }
    else
    {
        console.log('Nom incorrect !!')
        verif++;
    }

    regexPrenom = /^[a-zA-Z]+$/;
    prenom = formulaire.elements.prenom.value
    if (regexPrenom.test(prenom))
    {
        console.log('Prénom correct !')
    }
    else
    {
        console.log('Prénom incorrect !!')
        verif++;
    }

    function isChecked()
    {
        var checkedH = document.getElementById('masculin').checked;
        var checkedF = document.getElementById('feminin').checked;

        if(checkedH == false && checkedF == false)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    if (isChecked() == false)
    {
        verif++;
        console.log("Radio !!")
    }
    

    regexNaissance = /^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{1,4}$/;
    naissance = formulaire.elements.naissance.value
    if (regexNaissance.test(naissance))
    {
        console.log('Date correcte !')
    }
    else
    {
        console.log('Date incorrecte !!')
        verif++;
    }

    regexCp = /^[0-9]{5}$/;
    cp = formulaire.elements.cp.value
    if (regexCp.test(cp))
    {
        console.log('Code postal correct !')
    }
    else
    {
        console.log('Code postal incorrect !!')
        verif++;
    }

    regexAdresse = /^[a-zA-Z0-9,\-' ]+$/;
    adresse = formulaire.elements.adresse.value
    if (regexAdresse.test(adresse))
    {
        console.log('Adresse correcte !')
    }
    else
    {
        console.log('Adresse incorrecte !!')
        verif++;
    }

    regexVille = /^[a-zA-Z0-9,\- ]+$/;
    ville = formulaire.elements.ville.value
    if (regexVille.test(ville))
    {
        console.log('Ville correcte !')
    }
    else
    {
        console.log('Ville incorrecte !!')
        verif++;
    }

    regexEmail = /^[a-z0-9.-_]+@[a-z0-9.-_]+\.[a-z]{2,6}$/;
    email = formulaire.elements.email.value
    if (regexEmail.test(email))
    {
        console.log('Email correct !')
    }
    else
    {
        console.log('Email incorrect !!')
        verif++;
    }




    regexQuestion = /^[a-zA-Z0-9]+$/;
    question = formulaire.elements.question.value
    if (regexQuestion.test(question))
    {
        console.log('Question correcte !')
    }
    else
    {
        console.log('Question incorrecte !!')
        verif++;
    }
    
    var validCheck = exampleCheck1.checkValidity();
    if (validCheck)
    {
        console.log("Check !!")
    }
    else
    {
        console.log("Pas check :(")
        verif++;
    }



    if(verif>0)
    {
        alert('Vous devez compléter tous les champs !!')
        return false;
    }
    else
    {
        alert('Merci à vous !!')
        return true;
    }
}