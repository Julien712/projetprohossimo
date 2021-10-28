from django.shortcuts import render, redirect
from .models import( 
    Entete,
    Accessoires,
    Com,
    Gilet,
    Pantalon,
    Veston,
) 
from .forms import(
    EnteteForm,
    AccessoiresForm,
    ComForm,
    GiletForm,
    PantalonForm,
    VestonForm,
)
from django.views.generic import ListView, TemplateView
from django.contrib import messages
from fiche import forms
from .filters import OrderFilter
from django.contrib.auth.decorators import login_required
from accounts.models import Profile


@login_required(login_url='login')
def multiple_form(request, pk):
    societe = Profile.objects.get(pk=pk)
    if request.method == 'POST':
        entete_form = forms.EnteteForm(request.POST)
        accessoires_form = forms.AccessoiresForm(request.POST)
        com_form = forms.ComForm(request.POST)
        gilet_form = forms.GiletForm(request.POST)
        pantalon_form = forms.PantalonForm(request.POST)
        veston_form = forms.VestonForm(request.POST)

        if entete_form.is_valid() and accessoires_form.is_valid() and com_form.is_valid() and gilet_form.is_valid() and pantalon_form.is_valid() and veston_form.is_valid():
            
            newentete = entete_form.save(commit=False)
            newentete.societe = societe
            entete_form = newentete
            newentete = entete_form.save()

            newaccessoires = accessoires_form.save(commit=False)
            newaccessoires.societe = societe
            accessoires_form = newaccessoires
            newaccessoires = accessoires_form.save()

            newcom = com_form.save(commit=False)
            newcom.societe = societe
            com_form = newcom
            newcom = com_form.save()

            newgilet = gilet_form.save(commit=False)
            newgilet.societe = societe
            gilet_form = newgilet
            newgilet = gilet_form.save()

            newpantalon = pantalon_form.save(commit=False)
            newpantalon.societe = societe
            pantalon_form = newpantalon
            newpantalon = pantalon_form.save()

            newveston = veston_form.save(commit=False)
            newveston.societe = societe
            veston_form = newveston
            newveston = veston_form.save()

        else:
            entete_form = EnteteForm()
            accessoires_form = AccessoiresForm()
            com_form = ComForm()
            gilet_form = GiletForm()
            pantalon_form = PantalonForm()
            veston_form = VestonForm()
            return redirect('home')

    entete_form = forms.EnteteForm()
    accessoires_form = forms.AccessoiresForm()
    com_form = forms.ComForm()
    gilet_form = forms.GiletForm()
    pantalon_form = forms.PantalonForm()
    veston_form = forms.VestonForm()
    
    context = {
        'entete_form':entete_form,
        'accessoires_form':accessoires_form,
        'com_form':com_form,
        'gilet_form':gilet_form,
        'pantalon_form':pantalon_form,
        'veston_form':veston_form,
    }
    return render(request, 'fichemesure.html', context)

@login_required(login_url='login')
def rechercheFiche(request):
    infos = Entete.objects.all().order_by('-curdate')

    myFilter = OrderFilter(request.GET, queryset=infos)
    infos = myFilter.qs 

    context =  {
        'infos':infos,
        'myFilter':myFilter,
    }
    return render(request, 'crud/recherchefiche.html', context)

@login_required(login_url='login')
def updateFiche(request, pk):

    entete = Entete.objects.get(id_entete=pk)
    entete_form = EnteteForm(instance=entete)
    accessoires = Accessoires.objects.get(id_accessoires=pk)
    accessoires_form = AccessoiresForm(instance=accessoires)
    com = Com.objects.get(id_com=pk)
    com_form = ComForm(instance=com)
    gilet = Gilet.objects.get(id_gilet=pk)
    gilet_form = GiletForm(instance=gilet)
    pantalon = Pantalon.objects.get(id_pantalon=pk)
    pantalon_form = PantalonForm(instance=pantalon)
    veston = Veston.objects.get(id_veston=pk)
    veston_form = VestonForm(instance=veston)
    if request.method == 'POST':
        entete_form = EnteteForm(request.POST, instance=entete)
        accessoires_form = AccessoiresForm(request.POST, instance=accessoires)
        com_form = ComForm(request.POST, instance=com)
        gilet_form = GiletForm(request.POST, instance=gilet)
        pantalon_form = PantalonForm(request.POST, instance=pantalon)
        veston_form = VestonForm(request.POST, instance=veston)
        if entete_form.is_valid() and accessoires_form.is_valid() and com_form.is_valid() and gilet_form.is_valid() and pantalon_form.is_valid() and veston_form.is_valid():
            entete_form.save()
            accessoires_form.save()
            com_form.save()
            gilet_form.save()
            pantalon_form.save()
            veston_form.save()
            return redirect('home')
    
    context = {
        'entete_form':entete_form,
        'accessoires_form':accessoires_form,
        'com_form':com_form,
        'gilet_form':gilet_form,
        'pantalon_form':pantalon_form,
        'veston_form':veston_form,
    }
    return render(request, 'fichemesure.html', context)

@login_required(login_url='login')
def deleteFiche(request, pk):
    entete_form = Entete.objects.get(id_entete=pk)
    accessoires_form = Accessoires.objects.get(id_accessoires=pk)
    com_form = Com.objects.get(id_com=pk)
    gilet_form = Gilet.objects.get(id_gilet=pk)
    pantalon_form = Pantalon.objects.get(id_pantalon=pk)
    veston_form = Veston.objects.get(id_veston=pk)
    if request.method == "POST":
        entete_form.delete()
        accessoires_form.delete()
        com_form.delete()
        gilet_form.delete()
        pantalon_form.delete()
        veston_form.delete()
        return redirect('home')
   
    context = {
        'entete_form':entete_form,
        'accessoires_form':accessoires_form,
        'com_form':com_form,
        'gilet_form':gilet_form,
        'pantalon_form':pantalon_form,
        'veston_form':veston_form,
    }
    return render(request, 'crud/delete.html', context)

def impression(request, pk):
    entete_form = Entete.objects.get(id_entete=pk)
    accessoires_form = Accessoires.objects.get(id_accessoires=pk)
    com_form = Com.objects.get(id_com=pk)
    gilet_form = Gilet.objects.get(id_gilet=pk)
    pantalon_form = Pantalon.objects.get(id_pantalon=pk)
    veston_form = Veston.objects.get(id_veston=pk)

    context =  {
        'entete_form':entete_form,
        'accessoires_form':accessoires_form,
        'com_form':com_form,
        'gilet_form':gilet_form,
        'pantalon_form':pantalon_form,
        'veston_form':veston_form,
    }

    return render(request, 'impression.html', context)