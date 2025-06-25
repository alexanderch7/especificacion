Feature: HU004-RF - Adjuntar Evidencia Multimedia
    Como usuario, quiero adjuntar archivos multimedia a mis reportes
    para dar un contexto visual y claro a las autoridades.
    
    Scenario Outline: Adjuntar múltiples fotos y un video a un reporte
        Given el usuario está creando un reporte de un <Incidente>
        When selecciona y adjunta <CantidadFotos> fotos y <CantidadVideos> video desde su galería
        Then las miniaturas de los archivos seleccionados deben aparecer en el borrador del reporte.
        
        Examples:
        | Incidente           | CantidadFotos | CantidadVideos |
        | accidente vehicular | 2             | 1              |

    Scenario Outline: Intentar adjuntar un tipo de archivo no soportado
        Given el usuario está adjuntando evidencia a un reporte
        When intenta subir un archivo de audio con extensión "<ExtensionNoSoportada>"
        Then el sistema debe mostrar un mensaje de error que dice "Tipo de archivo no soportado".
        
        Examples:
        | ExtensionNoSoportada |
        | .mp3                 |

    Scenario Outline: Quitar una evidencia adjuntada por error
        Given el usuario ha adjuntado <ArchivoAdjunto> a un reporte
        When presiona el icono de "eliminar" en el <ArchivoAdjunto>
        Then el archivo debe ser eliminado del borrador del reporte.

        Examples:
        | ArchivoAdjunto |
        | foto2.jpg      |
