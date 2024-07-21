# Використовуємо базовий образ Python
FROM python:3.10-slim

# Встановлюємо робочий каталог в контейнері
WORKDIR /app

# Копіюємо файли додатку в контейнер
COPY . /app

# Встановлюємо залежності (якщо потрібно)
RUN pip install pymongo

# Відкриваємо порти, які будуть використовуватися
EXPOSE 3000
EXPOSE 5000

# Команда для запуску додатку
CMD ["python", "main.py"]