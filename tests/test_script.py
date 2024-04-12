# tests/test_script.py
import os
from kaggle.api.kaggle_api_extended import KaggleApi

def test_import_kaggle():
    location = "C:/Users/FAVIO/Desktop/proyecto_parcial/python/dataset"
    assert os.path.exists(location), "La carpeta no existe"
    
    api = KaggleApi()
    api.authenticate()
    api.dataset_download_file('henryshan/starbucks','starbucks.csv',path=location,quiet=False)
    # Agrega más pruebas según sea necesario

def test_import_sql():
    # Agrega pruebas para el script SQL si es necesario
    pass
