<?php

if (isset($_SESSION["sesion_id_rol"])){

    $sql = $db->Prepare("SELECT nombre, logo
    FROM institucion
    WHERE id_institucion = 1
    AND _estado <>  'X'                     
    ");

$rs1 = $db->GetAll($sql);
$nombre = $rs1[0]["nombre"];
$logo = $rs1[0]["logo"];

        echo"<div class='cabecera'>";

        $dir_php=$_SERVER["PHP_SELF"];
        $cuerp = strpos($dir_php, "listado_tablas.php");  

		if($cuerp == false)
			echo"<img src='../institucion/logo/{$logo}' width='50px'  >";
		else{
			echo" <img src='privada/institucion/logo/{$logo}'width='50px' >";
		}
	echo"<div class='titulo'>";
    echo"SISTEMA WEB {$nombre}";
    echo"</div>";
    echo"<div class='usuario'>";
    echo" &nbsp;&nbsp; &nbsp;&nbsp; USUARIO: <b>".$_SESSION["sesion_usuario"]."</b> &nbsp;&nbsp; ";
        echo "ROL:<b> ".$_SESSION["sesion_rol"]."</b>";
    echo"</div>";
    echo"</div>";

	//$db->debug=true;

	$sql = $db->Prepare("SELECT ac.*, op.id_opcion, op.orden, op.contenido, gr.id_grupo, gr.grupo, op.opcion 
                        FROM accesos ac
                        INNER JOIN opciones op ON ac.id_opcion = op.id_opcion
                        INNER JOIN grupos gr ON op.id_grupo = gr.id_grupo
                        WHERE ac.id_rol = '".$_SESSION["sesion_id_rol"]."'
                        AND ac._estado <> 'X'
                        AND op._estado <> 'X'
						AND gr._estado <> 'X'
						ORDER BY op.id_grupo, op.orden
						");
	$rs = $db->Execute($sql);

	$sql2 = $db->Prepare("SELECT ac.*, op.id_opcion, op.orden, op.contenido, gr.id_grupo, gr.grupo, op.opcion 
                        FROM accesos ac
                        INNER JOIN opciones op ON ac.id_opcion = op.id_opcion
                        INNER JOIN grupos gr ON op.id_grupo = gr.id_grupo
                        WHERE ac.id_rol = '".$_SESSION["sesion_id_rol"]."'
                        AND ac._estado <> 'X'
                        AND op._estado <> 'X'
						AND gr._estado <> 'X'
						ORDER BY op.id_grupo, op.orden
						");
	$rs2 = $db->Execute($sql2);
	$nick = $_SESSION["sesion_usuario"];

}else {
    $rs = "";
    $rs2 = "";
    $nick = "";
}

echo"<html>
            <head>";
            if($cuerp == false)
    echo"<link rel='stylesheet' href='../../css/menu_desplegable.css' type='text/css'>";
        else
    echo"<link rel='stylesheet' href='css/menu_desplegable.css' type='text/css'>";

    echo"</head>
            <body>";
    
    if($nick != ""){
    echo"<div id='header'>
        <ul class='nav'>";
                $grup="";
                foreach ($rs as $r => $fila) {
                    echo"<li>";
                    if($grup != $fila["grupo"]) {
                        echo"<a onclick='location.href=\"#\"' style='cursor:pointer;'>".$fila["grupo"]."</a>";
                        $grup =$fila["grupo"];
                    }
                    echo"<ul>";
                    foreach ($rs2 as $t => $fila2) {
                        if($grup == $fila2["grupo"]) {
                            
                    if ($cuerp == false or $cuerp == ""){
                        echo"<li><a onclick='location.href=\"../".$fila2["contenido"]."\"' ' style='cursor:pointer;'>".$fila2["opcion"]."</a></li>";
                    }
                                else
                                echo"<li><a onclick='location.href=\"prac2_05-08_Martinez/".$fila2["contenido"]."\"'  style='cursor:pointer;'>".$fila2["opcion"]."</a></li>";
                }
        }
        echo"</ul>";
    echo"</li>";
    }
    echo"</ul>";
    if($cuerp == false){
        echo"<a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;'></a>";
    }else{
        echo"<a onclick='location.href=\"validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;'></a>";
    }
    echo"</ul>";
echo"</div>";
    }
?>