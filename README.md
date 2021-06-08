# pc-workstation

Role de ansible para aprovisionar y configurar workstation.

	- Crea usuario con el mismo nombre y password que el usuario de local host
	- Cruza key ssh del mismo

	- Setea vim como editor por defecto
	- configura sudo para que no pida password
	- Fix-KernelBug_207759 (Touchpad)
	- Instala Paquetes basicos
	- Instala paquetes para desarrollo
	- Instala docker y docker-compose
	- instala y configura virtualbox y vagrant
	

Plataformas testeadas:
- [X] Fedora-Mate-34
- [X] Ubuntu-Mate-20.04.1-LTS


## Pre-requisitos
 - instalar ansible
 - ansible-galaxy collection install ansible.posix
 - ansible-galaxy collection install community.general
 
## Uso (Como Rol)

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


## Uso (Desde el test/playbook)

- Ejecucion contra un equipo 100% nuevo


```
- Se recomienda ejecutar como root unicamente el tag user_config

	- Con algun usuario habilitado que tenga sudo:
		ansible-playbook -i tests/test_inventory tests/test_playbook.yml -u UsuarioHabilitado -k -t user_config

```

- Ejecucion contra un equipo donde ya se tiene cuenta de usuario


```
- Una vez que se tiene cuenta de usuario

	- Una vez creado el usuario y cruzada la clave publica (necesita sudo habilitado):
		ansible-playbook -i tests/test_inventory tests/test_playbook.yml 

```

## Informacion de Tags:

- host_config	| set hostname + config hosts
- user_config	|	create user equal origin host
- install_genericos	| install generic package
- config_genericos	| generic config (vim as default editor)
- Fix-KernelBug_207759 | fix touchpad
- install_desarrollo	| install developer package
- compiz	|install and config compiz
- add_docker	| install and config docker from oficial repo

* En Proceso de desarrollo:
	+ Fedora:
		- add_VirtualBox	|	install and config from oficial repo, virtualbok and vagrant
	+ Ubuntu
		- add_Games	|install games plataforms
