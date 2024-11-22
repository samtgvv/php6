<?php
global $pdo;
include 'datebase.php';
$sql = "SELECT * FROM news ORDER BY RAND() LIMIT 10";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$newsList = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <title>Новости</title>
</head>

<body>
    <h1>Последние новости</h1>

    <?

    $lim = 10;

    $pages = isset($_GET['p']) ? (int) $_GET['p'] : 1;
    if ($pages < 1) {
        $pages = 1;
    }

    $offset = ($pages - 1) * $lim;
    $sql = "SELECT COUNT(*) FROM `news`";
    $rows = $pdo->query($sql)->fetchColumn();
    $total = ceil($rows / $lim);

    ?>

    <div class="news-container">
        <?php

        $sql = "SELECT * FROM `news` LIMIT $lim OFFSET $offset";
        $newsList = $pdo->query($sql)->fetchAll();

        foreach ($newsList as $news): ?>
            <div class="news-item">
                <img src="<?php echo htmlspecialchars($news['image']); ?>"
                    alt="<?php echo htmlspecialchars($news['title']); ?>">
                <h2><?php echo htmlspecialchars($news['title']); ?></h2>
                <p><?php echo htmlspecialchars($news['content']); ?></p>
                <p class="date"><?php echo date("d.m.Y H:i", strtotime($news['publication_date'])); ?></p>
            </div>
        <?php endforeach; ?>
    </div>

    <div class="pagination">
        <?
        for ($i = 1; $i <= $total; $i++) {
            echo '<a href="?p=' . $i . '">' . $i . '</a>';
        }
        ?>
    </div>

</body>

</html>