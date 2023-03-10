from django.db import models


# Create your models here.



class owner(models.Model):
	username = models.CharField(max_length=255)
	email = models.CharField(max_length=255)
	phone = models.CharField(max_length=255)
	address = models.CharField(max_length=255)
	password = models.CharField(max_length=255)
	status = models.CharField(max_length=255,default="0")


class customer(models.Model):
	username = models.CharField(max_length=255)
	email = models.CharField(max_length=255)
	address = models.CharField(max_length=255)
	password = models.CharField(max_length=255)
	status = models.CharField(max_length=255,default="0")




class products(models.Model):
	productname = models.CharField(max_length=255)
	description = models.CharField(max_length=255)
	category = models.CharField(max_length=255)	
	owner_id = models.ForeignKey(owner, on_delete=models.CASCADE)
	upload = models.ImageField(upload_to ='uploads/')
	price = models.CharField(max_length=255)

    

class buying(models.Model):
	userid = models.ForeignKey(customer, on_delete=models.CASCADE)
	ownerid = models.ForeignKey(owner, on_delete=models.CASCADE)
	purchasingitem = models.ForeignKey(products, on_delete=models.CASCADE)
	name = models.CharField(max_length=255)
	deliver_address = models.CharField(max_length=255)
	contact_no = models.CharField(max_length=255)
	paymwnt = models.CharField(max_length=255,default="Pending")
	status = models.CharField(max_length=255,default="awaiting")


