# pc-workstation

Role de ansible para aprovisionar y configurar workstation.

	- Crea usuario con el mismo nombre y password que el usuario de local host
	- Cruza key ssh del mismo
	- Setea vim como editor por defecto
	- configura sudo para que no pida password
	- Instala Paquetes basicos
	- Instala paquetes para desarrollo
	- Instala docker y docker-compose
	- instala y configura virtualbox y vagrant
	

Plataformas testeadas:
- [X] Fedora-Mate-34
- [ ] Ubuntu-Mate-20.04.1-LTS


## Pre-requisitos
 - instalar ansible
 - ansible-galaxy collection install ansible.posix
 - ansible-galaxy collection install community.general
 
## Uso

- Crear o modificar el archivo requirements.yml en el directorio raiz de la receta para incluir el rol.

```
- src: git@github.com:upszot/pc-workstation.git
  scm: git
  version: "master"
```

- Ejecutar el comando galaxy-install para instalar el rol.

```
ansible-galaxy install -r requirements.yml
```

- Incluir el rol en la receta y modificar de ser necesario el valor de las variables definidas en defaults/main.yml a traves del paso de parametros al rol.

```
- Se puede ejecutar desde carpeta test 

	- Con algun usuario habilitado que tenga sudo:
		ansible-playbook -i tests/test_inventory tests/test_playbook.yml -u UsuarioHabilitado -k

	- Una vez creado el usuario y cruzada la clave publica (necesita sudo habilitado):
		ansible-playbook -i tests/test_inventory tests/test_playbook.yml 


```

