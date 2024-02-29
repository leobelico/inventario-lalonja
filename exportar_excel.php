<?php
include('conexion.php');
require 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$consulta_inventario = "SELECT * FROM inventario WHERE id_bar = 2";
$resultado_inventario = $mysqli->query($consulta_inventario);

// Crear un nuevo objeto de la hoja de cálculo
$spreadsheet = new Spreadsheet();

// Obtener el objeto de la hoja activa
$sheet = $spreadsheet->getActiveSheet();

// Encabezados de columna
$columnas = ['ID', 'Costo total ', 'Mililitros', 'Inventario inicial ', 'Inventario final', 'Costo actual'];

// Agregar encabezados a la hoja de cálculo
foreach ($columnas as $key => $columna) {
    $sheet->setCellValueByColumnAndRow($key + 1, 1, $columna);
}

// Llenar datos en la hoja de cálculo
$fila = 2;
while ($info_inventario = $resultado_inventario->fetch_assoc()) {
    $sheet->setCellValueByColumnAndRow(1, $fila, $info_inventario['provedor']);
    $sheet->setCellValueByColumnAndRow(2, $fila, $info_inventario['comentarios']);
    $sheet->setCellValueByColumnAndRow(3, $fila, $info_inventario['producto']);
    $sheet->setCellValueByColumnAndRow(4, $fila, $info_inventario['litros']);
    $sheet->setCellValueByColumnAndRow(5, $fila, $info_inventario['mililitros']);
    $sheet->setCellValueByColumnAndRow(6, $fila, $info_inventario['cost_unitario']);
    $sheet->setCellValueByColumnAndRow(7, $fila, $info_inventario['cost_iva']);
    $sheet->setCellValueByColumnAndRow(8, $fila, $info_inventario['cpc']);
    $sheet->setCellValueByColumnAndRow(9, $fila, 'Bar socios');

    $fila++;
}

// Crear un escritor para Excel
$writer = new Xlsx($spreadsheet);

// Nombre del archivo
$excelFileName = 'exported_inventario.xlsx';

// Encabezados para la descarga
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="' . $excelFileName . '"');
header('Cache-Control: max-age=0');

// Guardar el archivo en la salida directa (output)
$writer->save('php://output');
exit;
?>
