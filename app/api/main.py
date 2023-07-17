from fastapi import FastAPI
from pydantic import BaseModel
from typing import Optional
from sqlalchemy import create_engine, MetaData, Table, select
import models
import os
from dotenv import load_dotenv

#load env variables
load_dotenv()

#define variables of
DATABASE_NAME = os.getenv('DATABASE_NAME')
HOST = os.getenv('HOST')
PORT = os.getenv('PORT')
USER = os.getenv('DB_USER')
PASSWORD = os.getenv('DB_PASSWORD')


# Crear la aplicación FastAPI
app = FastAPI()

# Configuración de la base de datos
DATABASE_URL = f'postgresql://{USER}:{PASSWORD}@{HOST}:{PORT}/{DATABASE_NAME}'
engine = create_engine(DATABASE_URL)
metadata = MetaData()

senderos = Table("senderos", metadata, autoload_with=engine)


@app.get("/senderos/{sendero_id}", response_model=models.Sendero)
async def get_sendero(sendero_id: int):
    query = select([senderos]).where(senderos.c.id == sendero_id)
    result = await engine.execute(query)
    sendero = result.fetchone()
    return models.Sendero(id=sendero[0], nombre=sendero[1], descripcion=sendero[2], longitud=sendero[3], intensidad=sendero[4])
