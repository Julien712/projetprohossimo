from django.contrib.auth import login
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from fiche.models import Entete
from fiche.filters import OrderFilter


@login_required(login_url='login')
def crud(request):
    infos = Entete.objects.all().order_by('-curdate')
    clients = User.objects.all()

    total_fiches = infos.count()
    total_clients = clients.count()

    context =  {
        'infos':infos,
        'clients':clients,
        'total_fiches':total_fiches,
        'total_clients':total_clients,
    }

    return render(request, 'crud/dashboard.html', context)

@login_required(login_url='login')
def boutique(request, pk):    
    infos = Entete.objects.filter(societe_id=pk).order_by('-curdate')

    myFilter = OrderFilter(request.GET, queryset=infos)
    infos = myFilter.qs

    context =  {
        'infos':infos,
        'myFilter':myFilter,
    }
    return render(request, 'crud/boutique.html', context)