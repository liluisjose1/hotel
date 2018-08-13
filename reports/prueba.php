<?php
// Cargamos la librería dompdf que hemos instalado en la carpeta dompdf
//require_once ('dompdf/dompdf_config.inc.php');

// require_once ('../assets/plugins/dompdf/autoload.inc.php');
require_once ('../assets/plugins/vendor/autoload.php');
use Dompdf\Dompdf;
$miname=$_GET["mi_name"];
echo $miname;
$html = "<h1>Hola $miname</h1>";
$pdf = new DOMPDF();
$pdf->set_paper("A4", "portrait");
$pdf->load_html(utf8_decode($html));
$pdf->render();
$pdf->stream('FicheroEjemplo.pdf');