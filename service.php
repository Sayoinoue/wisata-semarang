<?php
header("Content-Type: application/xml; charset=UTF-8");
include 'koneksi.php';

$kategori = isset($_GET['kategori']) ? $_GET['kategori'] : '';

$query = "SELECT * FROM semarang WHERE 1";

if($kategori) {
    $query .= " AND kategori='$kategori'";
}

$result = mysqli_query($koneksi, $query);
if (!$result) {
    die('Query error: ' . mysqli_error($koneksi));
}

$xml = new SimpleXMLElement('<data_wisata/>');

while ($row = mysqli_fetch_assoc($result)) {
    $warga = $xml->addChild('semarang');
    $warga->addChild('id', $row['id']);
    $warga->addChild('nama', $row['nama']);
    $warga->addChild('lokasi', $row['lokasi']);
    $warga->addChild('kategori', $row['kategori']);
    $warga->addChild('penjelasan', $row['penjelasan']);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'tambah') {
    $nama = $_POST['nama'];
    $alamat = $_POST['lokasi'];
    $jenis_kelamin = $_POST['kategori'];
    $agama = $_POST['penjelasan'];

    $query = "INSERT INTO semarang (nama, lokasi, kategori, penjelasan) VALUES ('$nama', '$lokasi', '$kategori', '$penjelasan')";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data wisata berhasil ditambahkan! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'edit') {
    $id = $_POST['id'];
    $nama = $_POST['nama'];
    $alamat = $_POST['lokasi'];
    $jenis_kelamin = $_POST['kategori'];
    $agama = $_POST['penjelasan'];

    $query = "UPDATE semarang SET nama='$nama', lokasi='$lokasi', kategori='$kategori', penjelasan='$penjelasan' WHERE id=$id";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data wisata berhasil diupdate! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['action']) && $_POST['action'] == 'hapus') {
    $id = $_POST['id'];

    $query = "DELETE FROM semarang WHERE id=$id";
    if (mysqli_query($koneksi, $query)) {
        echo "<response> Data wisata berhasil dihapus! </response>";
    } else {
        echo "<error> Error: " . mysqli_error($koneksi) . " </error>";
    }
    exit;
}
echo $xml->asXML();
?>