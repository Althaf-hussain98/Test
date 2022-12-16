from django.urls import path,include
from homestoreapp import views


urlpatterns = [
   path("",views.index),
   path("customer_register/",views.customer_register),
   path("customer_login/",views.customer_login),
   path("cu_logout/",views.cu_logout),
   path("tocheckout/",views.tocheckout),
   path("single/",views.singlepage),
   path("addaddress/",views.addaddress),
  
   path("paymetupdate/",views.paymetupdate),
   path('tocart/',views.tocart),
   path('removefromcart/',views.removefromcart),
   path('profile/',views.profile),
  

   path('buyall/',views.buyall),
   path('makepaymentforall/',views.makepaymentforall),
   path('paymetupdateall/',views.paymetupdateall),









   #admin


   path("admin_login/",views.admin_login),
   path("addproduct/",views.addproduct),
   path("ow_logout/",views.ow_logout),
   path("yourproducts/",views.yourproducts),
   path("deletemyproduct/",views.deletemyproduct)





   ]