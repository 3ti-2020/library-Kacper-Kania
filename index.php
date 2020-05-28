<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="container">
    <div class="a">
    <h1>Library</h1>
    </div>
    <div class="b">
    <form action="insert.php" method="POST">
       
        IMIE
        <input type="text" name="imie"> <br>
        NAZWISKO
        <input type="text" name="nazwisko"> <br>
        TYTUL
        <input type="text" name="tytul"> <br>
        ISBN
        <input type="text" name="isbn"> <br>
       
        <input type="submit" value="INSERT" name="POST">
    </form>
    </div>
    <div class="c">
    <?php
        $servername = "127.0.0.1";
        $username = "root";
        $password = "";
        $dbname = "library";

        $conn = new mysqli($servername, $username, $password, $dbname);



        $result = $conn->query("SELECT id, imie, nazwisko, tytul, ISBN FROM biblioteka, autorzy, tytul WHERE biblioteka.id_autorzy = autorzy.id_autorzy AND biblioteka.id_tytul = tytul.id_tytul group by id");

        echo("<table border='1'>");
        echo("<tr>
        <th>id</th>
        <th>imie</th>
        <th>nazwisko</th>
        <th>tytul</th>
        <th>ISBN</th>
        <th>Delete</th>
        </tr>");
        while( $wiersz = $result->fetch_assoc() ) {
            echo("<tr class='row'>");
            echo("<td>".$wiersz['id']."</td>".
            "<td>".$wiersz['imie']."</td>".
            "<td>".$wiersz['nazwisko']."</td>".
            "<td>".$wiersz['tytul']."</td>". 
            "<td>".$wiersz['ISBN']."</td>".
            "<td>
            <form action='delete.php' method='POST'>
            <input type='hidden' name='id' value=".$wiersz['id'].">
            <input type='submit' value='delete'>
            </form> </td>"
        );
            echo("</tr>");
        }
        echo("</table>");
    
    
    ?>
    </div>
    </div>

</body>
</html>