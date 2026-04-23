<?php
$conn = new mysqli("localhost", "root", "", "student_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get filter + sort values
$dept = $_GET['department'] ?? '';
$order = $_GET['sort'] ?? 'name';

// Base query
$sql = "SELECT * FROM students";

// Apply filter
if($dept != '') {
    $sql .= " WHERE department='$dept'";
}

// Apply sorting
$sql .= " ORDER BY $order";

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>

<h2>Student Dashboard</h2>

<!-- Filter + Sort Form -->
<form method="GET">
    Department:
    <select name="department">
        <option value="">All</option>
        <option>CSE</option>
        <option>IT</option>
        <option>ECE</option>
    </select>

    Sort By:
    <select name="sort">
        <option value="name">Name</option>
        <option value="dob">DOB</option>
    </select>

    <button type="submit">Apply</button>
</form>

<br>

<!-- Table Display -->
<table border="1">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>DOB</th>
    <th>Department</th>
    <th>Phone</th>
</tr>

<?php
while($row = $result->fetch_assoc()) {
    echo "<tr>
        <td>{$row['name']}</td>
        <td>{$row['email']}</td>
        <td>{$row['dob']}</td>
        <td>{$row['department']}</td>
        <td>{$row['phone']}</td>
    </tr>";
}
?>
</table>

<br>

<h3>Student Count per Department</h3>

<?php
$countQuery = "SELECT department, COUNT(*) as total FROM students GROUP BY department";
$countResult = $conn->query($countQuery);

while($row = $countResult->fetch_assoc()) {
    echo $row['department'] . " : " . $row['total'] . "<br>";
}
?>

</body>
</html>