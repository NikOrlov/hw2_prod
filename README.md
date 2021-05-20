Репозиторий содержит обученную модель для решения задачи предсказания заболевания.
Данные для построения модели были взяты [здесь](https://www.kaggle.com/ronitf/heart-disease-uci).
Inference модели был обернут в REST сервис (был использован FastAPI)
Для валидации метода /predict был подготовлен модуль, который запускается:
* ```python make_app_request.py```
Реализована валидация поступающих данных. С примером такой валидации можно ознакомиться с помощью тестов (модуль test_app.py):
* ```pytest```
Для использования модели на другом окружении был создан dockerfile (возможно команду потребуется запустить с sudo):
* ```docker build -t nikovtb/online_inference .```
Запуск локально контейнера (возможно команду потребуется запустить с sudo):
* ```docker run -p 8000:80 nikovtb/online_inference```
Можно запустить автоматическое тестирование метода '/predict' (прогон синтетических данных и датасета из обучения):
* ```python make_app_request.py```
Докер образ был опубликован [здесь](https://hub.docker.com/repository/docker/nikovtb/online_inference), использовать у себя можно с помощью:
* ```docker pull nikovtb/online_inference:firstpush```
* ```docker run -p 8000:80 nikovtb/online_inference:firstpush```