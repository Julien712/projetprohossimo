from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
# Create your models here.

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    telephone_user = models.CharField(max_length=20, default=None, null=True, blank=True)
    adresse = models.CharField(max_length=50, blank=True, null=True)

    def __str__(self):
        return self.user.username

