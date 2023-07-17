from pydantic import BaseModel
from typing import Optional

# Modelo para los senderos
class Sendero(BaseModel):
    id_sendero: int
    nombre: str
    descripcion: Optional[str] = None
    longitud: float
    dificultad: str
    detalles_tecnicos: str  
    detalles_cientificos: str
    imagen: str
    articulo: str
    tipo_sendero: str

# Modelo para las actividades
class Actividad(BaseModel):
    id_actividad: int
    nombre: str
    descripcion: Optional[str] = None
    ubicacion: str
    fecha_hora: str
    imagen: str
    tipo_actividad: str  

# Modelo para los artículos de la sociedad/cultura y ciencias naturales
class Articulo(BaseModel):
    id: int
    titulo: str
    contenido: str
    fecha_publicacion: str
    autor: str
    imagen: str
    tipo_articulo: str  # Para distinguir entre diferentes categorías de artículos

# Modelo para los emprendimientos locales
class Emprendimiento(BaseModel):
    id_emprendimiento: int
    nombre: str
    descripcion: Optional[str] = None
    producto: str
    contacto: str
    imagen: str

# Modelo para la oferta de alojamiento
class Alojamiento(BaseModel):
    id_alojamiento: int
    nombre: str
    descripcion: Optional[str] = None
    servicios: str
    ubicacion: str
    contacto: str
    imagen: str
    tipo: str  # Para distinguir entre diferentes tipos de alojamiento
    
