import unittest
import os
from script_python import download_data

class TestDownloadData(unittest.TestCase):

    def test_download_data(self):
        # Ejecutar el script
        download_data()

        # Verificar que la carpeta dataset se ha creado
        self.assertTrue(os.path.exists("C:/Users/FAVIO/Desktop/proyecto_parcial/python/dataset"))

        # Verificar que el archivo starbucks.csv se ha descargado
        self.assertTrue(os.path.exists("C:/Users/FAVIO/Desktop/proyecto_parcial/python/dataset/starbucks.csv"))

if __name__ == '__main__':
    unittest.main()
