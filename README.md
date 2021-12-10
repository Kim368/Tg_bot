# Tg_bot
Parser of news from BBC News. You can select the topics you are interested in and the bot will send you the latest news as soon as it appears on the BBC News site.
There is a function to subscribe and unsubscribe from topics and view your subscriptions.

Bot uses:
> Django, 
PostgreSQL, 
AioGram, 
BeautifulSoup, 
Threading, 
Asyncio,  
Logging, 
PyTest, 
Docker & Docker-compos

---
	
Модели:
- Topics:
	- Хранит данные о топиках, такие как: url, название, подписчики и последнюю новость

- Profiles
	- Профили пользователей
	Id чата, имя пользователя, дата регистрации, подписки, и являеться ли он админом
- Added_Subs
	- Вспомогательная таблица, которая нужна при добавлении, обнавлении подписок у пользователя
- Last_News
	- Хранит последнии новости всех топиков:
	Ссылку на новость, топик, текст, который генерируеться со стотьи, дату, и отправлена ли новость всем подпищикам
- Last_Messeges
	- Хранит последние сообщения пользователей и дату

---

> *polls/mvc/models*



	Здесь находяться все скрипты для парсинга и генерации новостей и топиков.
> *polls/mvc/Controller*

	Проверяет список топиков, которых находяться в ignore_list и создаёт топики

---

Команда botstarter запускает бота, и новый поток проверки новых новостей, а также обрабатывает сообщенич пользователей.

> *polls/bot*

Реализует команды бота, имеет декораторы сохранения сообщений и регистрации. Реализует state mashine.

---

Registration: 
	The client writes something in the chat 
	The bot adds the client's name, registration date, is 
	After that, the customer can use the bot
