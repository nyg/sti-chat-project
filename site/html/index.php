<?php

require_once 'util/db.php';
require_once 'util/redirect.php';

session_start();

// perform logout if user has clicked the button
if (isset($_POST['logout'])) {
    $_SESSION = array();
}

// redirect to login if user is not logged in
if (!isset($_SESSION['id'])) {
    redirect_to_login();
}

try {
    $db = init_db();

    // retrieve user's messages
    $stmt = $db->prepare('SELECT m.id, m.date, m.subject, m.content, m.seen, u.firstname sender_firstname, u.lastname sender_lastname FROM message m INNER JOIN user u ON u.id = m.sender WHERE receiver = :receiver');
    $stmt->execute(['receiver' => $_SESSION['id']]);
    $messages = $stmt->fetchAll();
    $db = null;
}
catch (PDOException $e) {
    echo $e->getMessage();
}

$pageTitle = 'Accueil';
include 'include/html_header.php';
include 'include/html_menu.php';

// display user messages
echo '<table>';
echo '<caption>Messages</caption>';
echo '<tr>';
echo '<th>Date</th>';
echo '<th>Expéditeur</th>';
echo '<th>Sujet</th>';
echo '<th>Lu</th>';
echo '<th colspan="3">Actions</th>';
echo '</tr>';

foreach ($messages as $message) {
    echo '<tr>';
    echo '<td>' . $message['date'] . '</td>';
    echo '<td>' . $message['sender_firstname'] . ' ' . $message['sender_lastname'] . '</td>';
    echo '<td>' . $message['subject'] . '</td>';
    echo '<td>' . ($message['seen'] === true ? 'Oui' : 'Non') . '</td>';
    echo '<td><a href="send.php?message=1">Répondre</a></td>';
    echo '<td><a href="index.php?delete=1">Supprimer</a></td>';
    echo '<td><a href="read.php?message=1">Ouvrir</a></td>';
    echo '</tr>';
}

echo '<table>';

?>

    <form action="" method="post">
        <button type="submit" name="logout">Logout</button>
    </form>

<?php

include 'include/html_footer.php';
