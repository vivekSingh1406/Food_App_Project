# Food_App_Project
# Using spring mvc Architecture to create Food_App.


# Architecture of spring mvc -

step 1 :- Request is send dispatcher-servlet from client
step 2 :- It is forwarded to Handler-Mapping, Handler-Mapping will searching for the request in controller class
step 3 :- if Found then Controller class path is sending as response to the dispatcher-servlet
step 4 :- Dispatcher-servlet will search for that request in controller-class
step 5 :- Response from the controller-class is send to the dispatcher-servlet as model (data)
step 6 :- Dispatcher-servlet will get to know the view technology using is that web Application is view-Resolver
step 7 :- Despatcher-servlet will searches for view technology files (.jsp , .html....)
step 8 :- Respanse will be forwarded to the client
