# Usa una imagen base de Python
FROM python:3.12-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de la aplicación de Streamlit al directorio de trabajo en el contenedor
COPY streamlit_app.py /app

# Instala las dependencias de la aplicación
RUN pip install streamlit

# Exponer el puerto 8501 para acceder a la aplicación de Streamlit
EXPOSE 8501

# Comando para ejecutar la aplicación de Streamlit cuando el contenedor se inicie
CMD ["streamlit", "run", "streamlit_app.py"]
