# pc-workstation  
<div>	   
<table>
  <tr>
<<<<<<< HEAD
    <td><img src="./tux_ninja.png" width="150" align="left" border=0px></td>
=======
    <td><img src="./tux_ninja.png" width="150" align="left" ></td>
>>>>>>> ea08baf1489ec19bdf897f2e3d8ac67bf7101c5b
    <td>Rol de ansible para aprovisionar y configurar workstation.</td>
  </tr>		
</table>
</div>
	
	- Crea usuario con el mismo nombre y password que el usuario de local host
	- Cruza key ssh del mismo

	- Setea vim como editor por defecto
	- configura sudo para que no pida password
	- Fix-KernelBug_207759 (Touchpad)
	- Instala Paquetes basicos
	- Instala paquetes para desarrollo
	- Instala docker y docker-compose
	- instala y configura virtualbox y vagrant
	- Instala plataformas de juegos 
	- Instala y configura AnyConnect (VPN Cisco Client)

Plataformas testeadas:
- [X] Fedora-Mate-33
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
    > Se recomienda ejecutar desde algun usuario habilitado que tenga sudo, unicamente el Tag **user_config**  

```sh
ansible-playbook -i tests/test_inventory tests/test_playbook.yml -u UsuarioHabilitado -k -t user_config
```

- Ejecucion contra un equipo donde ya se tiene cuenta de usuario
    > Ejecuciones posteriores al Tag **user_config** 
		> Una vez creado el usuario y cruzada la clave publica (necesita sudo habilitado):

```sh
ansible-playbook -i tests/test_inventory tests/test_playbook.yml 
```

## Informacion de Tags:

| Tags 			| Description 							| standard run 		|
| ------                | ------ 							| ------ 		|
| host_config		| set hostname + config hosts					| 			|
| user_config      	| create user equal origin host					| specifying only	|
| install_genericos	| install generic package					| 			|
| config_genericos 	| generic config (vim as default editor) 			| 			|
| Fix-KernelBug_207759  | fix touchpad 							| 			|
| install_desarrollo	| install developer package 					| 			|
| compiz	        | install and config compiz 					| 			|
| add_docker	        | install and config docker from oficial repo			| 			|
| add_VirtualBox	| install and config from oficial repo, virtualbok and vagrant 	| 			|
| add_Games	        | install games plataforms 					| 			|
| VPN	                | install and config Anyconnect (vpn cisco) 			| 			|


## Funcionalidades en Proceso de desarrollo / Pendientes:

| Tags 		| Descriptions 				| State  -> 				| Ubuntu 	| Fedora  	|
| ------ 	| ------ 				|------ 				| ------ 	| ------ 	|
| add_Games 	| instalacion plataformas de juegos 	| Cliente epic games (no-oficial)	| Testing	| No Test	|
| VPN		| Instalacion cliente VPN (cisco)	|					|		| Tested 	|
| compiz	| Import compiz config perfiles		| pending development			|		|		|
|		| Paquetes multimedia (smplayer, obs)	| pending development			|		|		|
|		|	Emulador para correr apk Android| pending development			|		|		|		



