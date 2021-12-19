# Python_Flask_ML_Model

Курсовой проект по курсу "Машинное обучение в бизнесе"

Стек:

ML: Numpy, Pandas, SkLearn

API: Flask

Dataset: https://www.kaggle.com/fedesoriano/heart-failure-prediction

Задача: предсказать значение сердечной недостаточности (бинарная классификация: 1 - сердечная недосточность, 0 - отсутствие)

Используемые признаки:

1. Age: age of the patient [years]
2. Sex: sex of the patient [M: Male, F: Female]
3. ChestPainType: chest pain type [TA: Typical Angina, ATA: Atypical Angina, NAP: Non-Anginal Pain, ASY: Asymptomatic]
4. RestingBP: resting blood pressure [mm Hg]
5. Cholesterol: serum cholesterol [mm/dl]
6. FastingBS: fasting blood sugar [1: if FastingBS > 120 mg/dl, 0: otherwise]
7. RestingECG: resting electrocardiogram results [Normal: Normal, ST: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV), LVH: showing probable or definite left ventricular hypertrophy by Estes' criteria]
8. MaxHR: maximum heart rate achieved [Numeric value between 60 and 202]
9. ExerciseAngina: exercise-induced angina [Y: Yes, N: No]
10. Oldpeak: oldpeak = ST [Numeric value measured in depression]
11. T_Slope: the slope of the peak exercise ST segment [Up: upsloping, Flat: flat, Down: downsloping]

Model: GradientBoostingClassifier

Для запуска модели:
1. git clone https://github.com/OctavianNekit/ML_Business_Project![image](https://user-images.githubusercontent.com/39792060/146687118-1388026d-c715-4ab0-8512-b484a244f37c.png)
2. cd ML_Business_Project![image](https://user-images.githubusercontent.com/39792060/146687129-0b59b895-aaba-4e50-947a-279356cd86d2.png)
3. docker build -t octaviannekit/ml_business_project .![image](https://user-images.githubusercontent.com/39792060/146687137-1aa448c7-cfc4-4226-8552-1f3ccca23708.png)
4. docker run -d -p 8180:8180 -p 8181:8181 -v <...>:/app/app/models octaviannekit/ml_business_project![image](https://user-images.githubusercontent.com/39792060/146687141-ca090015-3d2f-4b6d-8ccc-b28c32280669.png)
(Вместо <...> прописать путь к модели)
5. Перейти на localhost:8181
