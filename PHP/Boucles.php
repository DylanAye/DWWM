<html> 
    <?php
        /*$a = 1;
        while ($a < 150)
        {
            if ($a%2)
            {
                echo $a."<br>";
                $a = $a +2;
            }
        }*/


        /*$var = "Je dois faire des sauvegardes régulières de mes fichiers.";

        for($i = 1;$i<501;$i++)
        {
            echo $i.". ".$var."<br>";
        }*/
    

    
        echo "<table border = 1>";
            echo "<tr><th></th>";
                for($i=0;$i<=12;$i++)
                {
                    echo "<th>".$i."</th>";
                }
            echo "</tr>";
            for($j=0;$j<=12;$j++)
                {
                    echo "<tr><th>".$j."</th>";
                    for($i=0;$i<=12;$i++)
                    {
                        echo "<td>".($j*$i)."</td>";
                    }
                    echo "</tr>";
                }
        echo "</table>";


    ?>
</html>