<?php
include('conexion.php');

$consulta_exportar = "SELECT id_socios, costo_tot, producto, mililitros, i_i, i_f, costo_act, venta_r, ((mililitros * i_i - mililitros * i_f) / 90) AS venta_aproximada, (((mililitros * i_i - mililitros * i_f) / 90) - venta_r) AS diferencia_venta, fecha_actualizacion FROM socios";
$resultado_exportar = $mysqli->query($consulta_exportar);

// Crear archivo Excel
$filename = 'Inventario_socios_' . date('Ymd') . '.xls';
header('Content-type: application/ms-excel');
header('Content-Disposition: attachment; filename=' . $filename);

echo "ID\tCosto Total\tProducto\tMililitros\tInventario Inicial\tInventario Final\tCosto Actual\tVenta Registrada\tVenta Aproximada\tDiferencia de Venta\tFecha de Actualización\n";

while ($fila_exportar = $resultado_exportar->fetch_assoc()) {
  echo "{$fila_exportar['id_socios']}\t{$fila_exportar['costo_tot']}\t{$fila_exportar['producto']}\t{$fila_exportar['mililitros']}\t{$fila_exportar['i_i']}\t{$fila_exportar['i_f']}\t{$fila_exportar['costo_act']}\t{$fila_exportar['venta_r']}\t{$fila_exportar['venta_aproximada']}\t{$fila_exportar['diferencia_venta']}\t{$fila_exportar['fecha_actualizacion']}\n";
}
?>
