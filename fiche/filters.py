from django import forms
import django_filters
from django_filters import DateFilter, CharFilter

from .models import *

class OrderFilter(django_filters.FilterSet):
	nomprenom = CharFilter(field_name="nom", label='Nom, prénom')
	telphone = CharFilter(field_name="phone", label='Téléphone')
	email = CharFilter(field_name="mail", label='Email')
	adresseclient = CharFilter(field_name="adresse", label='Adresse')
	datecreation = DateFilter(field_name="curdate", label='Date de création',
		widget=forms.DateInput(
    		attrs={
    		     'type': 'date',
    		},
        ),
	)
	datereception = DateFilter(field_name="reception", label='Date de réception',
		widget=forms.DateInput(
    		attrs={
    		     'type': 'date',
    		},
        ),
	)
	searchsociete = CharFilter(field_name="societe", label='Société')
	class Meta:
		model = Entete
		fields = '__all__'
		exclude = ['nom', 'curdate', 'reception', 'societe', 'mesurenumero','profile','phone','mail','adresse']