# Changelog

### changed
- [ ] change_4_roles: 
  - Se realizo un refactor masivo, todos los include_task se migraron a roles.
  - Se realizo una prueba contra Fedora 42 Mate, algunas cosas fallaron y se les agrego el tag Never.
  - Todavia no se probo contra Ubuntu.

- [x] test -> master
  - Se realizo merge de test -> master
  - Los cambios fueron un refactor masivo de include_task a include ya que dicha funcionalidad quedo deprecada en las versiones mas nuevas de Ansible.
  - No se realizaron pruebas con versiones mas modernas de las distribuciones.
