Feature: HU018-RF - Editar Mi Perfil de Usuario 
    Como un usuario (Fernando), quiero poder editar la información de mi perfil (nombre, foto), para mantener mis datos actualizados. 

    Scenario: Cambiar nombre y foto de perfil
        Given el usuario está en "Editar perfil"
        When sube una nueva foto y cambia su nombre a "Fernando D."
        Then el sistema guarda los cambios y actualiza la vista de perfil

        Examples:
            | Nombre nuevo | Foto nueva        | 
            | Fernando D.  | fernando_new.png  | 


    Scenario: Intentar guardar perfil sin nombre
        Given el usuario borra el campo "Nombre"
        When pulsa "Guardar"
        Then la app muestra "El nombre es obligatorio"

        Examples:
            | Foto nueva      | 
            | perfil2025.jpg  | 
        
    
    Scenario: Cancelar cambios
        Given el usuario hace cambios en su bio 
        When presiona "Cancelar"
        Then los cambios no se guardan y se muestra el perfil original

        Examples:
            | Campo cambiado | 
            | Biografía      | 