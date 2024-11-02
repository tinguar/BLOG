# Comandos Básicos e Intermedios de Git

## Comandos Básicos

### Configuración Inicial
```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tuemail@example.com"
```

### Inicializar un Repositorio
```bash
git init
```

### Clonar un Repositorio
```bash
git clone <url-del-repositorio>
```

### Ver el Estado del Repositorio
```bash
git status
```

### Agregar Cambios al Staging Area
```bash
git add <archivo>         # Agrega un archivo específico
git add .                 # Agrega todos los archivos modificados
```

### Realizar un Commit
```bash
git commit -m "Mensaje del commit"
```

### Ver el Historial de Commits
```bash
git log
```

### Deshacer Cambios
```bash
git checkout -- <archivo> # Deshacer cambios en un archivo específico
git reset HEAD <archivo>   # Deshacer el staging de un archivo
```

## Comandos Intermedios

### Ver Diferencias
```bash
git diff                   # Ver diferencias no indexadas
git diff --cached          # Ver diferencias indexadas
```

### Crear y Cambiar de Rama
```bash
git branch <nombre-rama>   # Crear una nueva rama
git checkout <nombre-rama>  # Cambiar a una rama existente
git checkout -b <nombre-rama> # Crear y cambiar a una nueva rama
```

### Fusionar Ramas
```bash
git merge <nombre-rama>     # Fusionar una rama en la rama actual
```

### Eliminar una Rama
```bash
git branch -d <nombre-rama>  # Eliminar una rama local
git push origin --delete <nombre-rama> # Eliminar una rama remota
```

### Etiquetas (Tags)
```bash
git tag <nombre-etiqueta>    # Crear una etiqueta
git push origin <nombre-etiqueta> # Subir una etiqueta al remoto
```

### Sincronizar Cambios con el Remoto
```bash
git pull                     # Traer cambios del remoto y fusionar
git push                     # Subir cambios al remoto
```

### Revertir Cambios en un Commit
```bash
git revert <id-del-commit>   # Crea un nuevo commit que revierte cambios
```

### Stash (Guardar Cambios Temporalmente)
```bash
git stash                    # Guardar cambios no commitados
git stash pop                # Recuperar cambios guardados
```

### Ver Repositorios Remotos
```bash
git remote -v               # Ver remotos configurados
```

### Cambiar la URL de un Remoto
```bash
git remote set-url origin <nueva-url>
```

---

Estos son algunos de los comandos más comunes en Git. Para más información y detalles, consulta la [documentación oficial de Git](https://git-scm.com/doc).
