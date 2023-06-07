<!DOCTYPE html>
<html>
<head>
    <title>Успешно переведенный чек</title>
</head>
<body>
    <h1>Чек успешно переведен на почту {{$user->email}}</h1>
    <h3>Здесь вы можете увидеть данные о вашем чеке:</h3>

    <p>Вы выбрали подписку {{$plan->name}} который стоит {{$plan->price}}$ в месяц и описание подписки {{$plan->description}}</p>
    
</body>
</html>