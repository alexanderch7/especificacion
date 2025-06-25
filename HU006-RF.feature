Feature: HU006-RF - Reporte Anónimo (Estudiante)
    Como un usuario, quiero reportar incidentes de forma anónima
    para proteger mi identidad y evitar posibles represalias.
    
    Scenario Outline: Enviar un reporte marcando la opción de anonimato
        Given el usuario está creando un reporte de un <Incidente>
        When marca la casilla "Reportar Anónimamente" antes de enviar el reporte
        Then el reporte se publica sin mostrar su nombre de usuario.
        
        Examples:
        | Incidente |
        | Pelea     |
    
    Scenario Outline: Comprobar anonimato en la vista pública
        Given un usuario ha enviado un reporte anónimo sobre un <Incidente>
        When otro usuario cualquiera ve el reporte en el mapa
        Then el reporte debe mostrarse con la etiqueta "<EtiquetaAnonima>" en lugar de un nombre.

        Examples:
        | Incidente | EtiquetaAnonima           |
        | Pelea     | "Reporte de un ciudadano" |
        
    Scenario Outline: Ver un reporte anónimo en el historial personal
        Given el usuario ha enviado un reporte anónimo
        When revisa su sección de "Mis Reportes"
        Then el reporte enviado debe aparecer en la lista con un <IndicadorDeAnonimato> visible.

        Examples:
        | IndicadorDeAnonimato     |
        | icono de máscara/fantasma |
