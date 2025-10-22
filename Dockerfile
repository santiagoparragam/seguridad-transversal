# Imagen base
FROM santiagoparraga/holamundobasespm:1


# Establece el directorio de trabajo
WORKDIR /app

# Copia el script al contenedor
COPY app.py .


# Instala Flask
RUN pip install flask

RUN chown -R appuser:appgroup /app

USER appuser
# Expone el puerto en el que correrá la app
EXPOSE 3000

# Comando por defecto para ejecutar la app
CMD ["python", "app.py"]
