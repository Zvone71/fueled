# Q&A forum
A django-based Q&A forum, a community-driven web application. 


![Alt Text](https://i.imgur.com/QvCjcva.gif)

---
### Features


-  Forums management
-  Per-forum permissions
-  Topic and post editing
-  Anonymous posting
-  Forum moderation
-  Polls and attachments

---
### Set Up

```
$  pip install requirements.txt
$  python manage.py migrate
$  python manage.py createsuperuser
$  python manage.py runserver
```

---
### Test 
1.  Go to ``` 127.0.0.1:8000/forum ``` in your browser to see if the project is working
2.  To start a new forum, go to the admin panel ``` 127.0.0.1:8000/admin```  and add new forums. 
3.  Then, again go to ``` 127.0.0.1:8000/forum ``` to add new posts, and questions. 


