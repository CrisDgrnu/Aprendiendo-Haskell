data Titulacion = Grado_II | Grado_II_ADE | Grado_ADE deriving (Show , Eq)

data Estudiante = Est {
    nombre::String,
    titulacion::Titulacion
} deriving (Show, Eq)

data ListaMatriculados = LM [Estudiante] deriving Show
data ListaEstudiantesAsociados = LA [Estudiante] deriving Show

lm = (LM [(Est "Cristian" Grado_ADE ),(Est "Carlos" Grado_II )])
la = (LA [(Est "Cristian" Grado_ADE )])

mostrarAlumnosAsociados::ListaMatriculados->ListaEstudiantesAsociados -> [Estudiante]
mostrarAlumnosAsociados (LM []) _ = []
mostrarAlumnosAsociados _ (LA []) = []
mostrarAlumnosAsociados (LM ((Est n t):ms)) (LA as) =  if perteneceEstudiante (Est n t) (LA as) 
                                                        then ((Est n t): mostrarAlumnosAsociados (LM ms) (LA as)) 
                                                        else mostrarAlumnosAsociados (LM ms) (LA as)

perteneceEstudiante::Estudiante->ListaEstudiantesAsociados->Bool
perteneceEstudiante _ (LA []) = False
perteneceEstudiante (Est n t) (LA ((Est na ta):as)) = if (n == na) && (t == ta) then True else (perteneceEstudiante (Est n t) (LA as))