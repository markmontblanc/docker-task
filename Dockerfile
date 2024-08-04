# Використовуємо офіційний образ Python як базовий
FROM python:3.9-slim

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо файли з локального каталогу в контейнер
COPY requirements.txt requirements.txt

# Встановлюємо необхідні бібліотеки
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо код додатка в контейнер
COPY . .

# Вказуємо команду для запуску додатку
CMD ["python", "app.py"]
