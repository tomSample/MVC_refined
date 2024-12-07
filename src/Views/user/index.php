<h1>Users</h1>
<ul>
    <?php foreach ($users as $user): ?>
        <li><?php echo $user['firstName'] . ' ' . $user['lastName'] . ' (' . $user['birthdate'] . ')'; ?></li>
    <?php endforeach; ?>
</ul>