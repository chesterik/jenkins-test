FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
<<<<<<< Updated upstream
CMD ["python", "./src/app.py"]
=======
CMD ["python", "app.py"]
>>>>>>> Stashed changes
