% El programa consiste en las habilidades que posee cada estudiante y en base en ello se elige o selecciona la carrera
% con el coordinador de la carrera.


% Se define hechos de la carrera y los alumnos.

carrera('sistemas_computacionales').
carrera('administracion_de_empresas').
carrera('turismo').
carrera('enfermeria_general').
carrera('derecho').

% se utilizo las letras minusculas ya que tener errores con las mayusculas.

alumnos('miguel').
alumnos('francisco').
alumnos('javier').
alumnos('jesus').
alumnos('alejandra').
alumnos('roxana').
alumnos('emmanuel').
alumnos('rodrigo').
alumnos('angel').
alumnos('enrique').
alumnos('gonzalo').
alumnos('fatima').
alumnos('guadalupe').

% Son las materias que están relacionado a la carrera.

cualidades('programacion','sistemas_computacionales').
cualidades('base de datos','sistemas_computacionales').
cualidades('redes de computadora','sistemas_computacionales').
cualidades('sistemas operativos','sistemas_computacionales').
cualidades('matematicas','sistemas_computacionales').

cualidades('contabilidad','administracion_de_empresas').
cualidades('mercadotecnia','administracion_de_empresas').
cualidades('matematicas financiera','administracion_de_empresas').
cualidades('administracion','administracion_de_empresas').

cualidades('servicio turistico','turismo').
cualidades('hablar distintos idiomas','turismo').
cualidades('creatividad','turismo').

cualidades('salud general','enfermeria_general').
cualidades('anatomia humana','enfermeria_general').
cualidades('famacologia','enfermeria_general').
cualidades('nutricion humana','enfermeria_general').
cualidades('bioquimica','enfermeria_general').

cualidades('derecho civil','derecho').
cualidades('derecho penal','derecho').
cualidades('derecho constitucional','derecho').
cualidades('derecho del trabajo','derecho').
cualidades('derecho financiero','derecho').

% Es la relacion de los estudiantes con los temas relacionado a cada carrera.

seleccion('miguel','redes de computadora').
seleccion('rodrigo','sistemas operativos').
seleccion('angel','programacion').
seleccion('francisco','redes de computadora').
seleccion('javier','derecho civil').
seleccion('enrique','derecho del trabajo').
seleccion('jesus','servicio turistico').
seleccion('alejandra','contabilidad').
seleccion('gonzalo','administracion').
seleccion('roxana','salud general').
seleccion('fatima','famacologia').
seleccion('guadalupe','nutricion humana').
seleccion('emmanuel','matematicas financiera').

% Son hechos de los nombre de los docentes.

docentes('antonio yam-').
docentes('alejandro camal-').
docentes('manuel cen-').
docentes('victor chan-').
docentes('marisol pech-').

% Es la relacion del docente a la carrera es decir a que carrera corresponde.

academia('sistemas_computacionales','antonio yam-').
academia('administracion_de_empresas','alejandro camal-').
academia('turismo','manuel cen-').
academia('enfermeria_general','victor chan-').
academia('derecho','marisol pech-').

% En base a la carrera se le asigna el coordinador.

asigno('antonio yam-','cordinador de la carrera de sistemas computacionales').
asigno('alejandro camal-','cordinador de la carrera de administracion de empresas').
asigno('manuel cen-','cordinador de la carrera de turismo').
asigno('victor chan-','cordinador de la carrera de enfermeria general').
asigno('marisol pech-','cordinadora de la carrera de derecho').

% Reglas...

% Es la asignacion de la carrera, es decir en base a la cualidad del estudiante se le asigna la carrera.
asignacion(X,Y):- seleccion(X,Z), cualidades(Z,Y).

% Es la asignacion del coordinador en base a que carrera este el docente.
profesor_materias(X,Y,Z):- academia(X,Y), asigno(Y,Z).
