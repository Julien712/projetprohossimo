from django import forms
from django.forms import ModelForm
from .models import (
    Entete,
    Accessoires,
    Com,
    Gilet,
    Pantalon,
    Veston,
)
from django.forms.fields import CharField

class EnteteForm(forms.ModelForm):
    reception = forms.DateField(
        required=True,
        widget=forms.DateInput(
           attrs={
                'type': 'date',
           },
        ),
    )
    class Meta: 
        model = Entete
        fields = ('__all__')
        exclude = [
            'societe'
        ]

class AccessoiresForm(forms.ModelForm):
    pantalon = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    veste = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    manteau = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    costume = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    troispiece = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    gilet = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    griffe = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    vignette = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    class Meta: 
        model = Accessoires
        fields = ('__all__')

class ComForm(forms.ModelForm):
    class Meta: 
        model = Com
        fields = ('__all__')

class GiletForm(forms.ModelForm):
    emboiterdevant = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pincealemmanchure = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    bordspique = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    bordsnonpique = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    giletsansboutonniere = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    class Meta: 
        model = Gilet
        fields = ('__all__')

class PantalonForm(forms.ModelForm):
    ardillon = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    basnonfinirevers = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    basfinisimple = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    basnonfinisimple = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    passanttunnel = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sanspassant = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    avecpatteserrage = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sansagrafe = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sanspatteprolongee = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    smokingbaguettesoie = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    surpiqueecouturecote = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    nondouble = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    doubledosgenoux = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    doubleentierementbas = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    fournituresnoires = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    ceintureantiglisse = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    btsbretelle = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    saillante = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    braguetteglissiere = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    braguetteboutons = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    POCHES_CHOICES= [
    ('pocherevolver0', '0'),
    ('pocherevolver1', '1'),
    ('pocherevolver2', '2'),
    ]
    pocherevolver = forms.CharField(
        required=False,
        widget=forms.RadioSelect(
            choices=POCHES_CHOICES,
            attrs={
                'class': 'classradio',
            }
        )
    )
    avecrabat = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pocheenbiais = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pochedanslacouture = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pochepassepoileesenbiais = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    cavalieres = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sanspli = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    unplisversexterieur = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    unplisversinterieur = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    deuxplisversexterieur = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    deuxplisversinterieur = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    unepochemontre = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pocheavecrabat = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    class Meta: 
        model = Pantalon
        fields = ('__all__')

class VestonForm(forms.ModelForm):
    poitrineforte = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    manteauavecsouspatte = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    manteauavecsousceinture = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    droitesarabat = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    enbiaisarabat = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sansrabat = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pocheticketexterieure = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sanspochepoitrine = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    deuxpochesplaquees = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    troispochesplaquees = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    pochelunette = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    sansgarde = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    preparerboutonniere = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    executerboutonniere = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    executerboutonnierenpo = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    boutonchevauchant = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    doublagemignonette = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    coudesencuir = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    nepasmonterlesmanches = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    epsemidouble = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    epsansepaulettes = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    epaulettesplusfines = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    epsanscigarette = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    DOSFENTES_CHOICES= [
    ('dosfentes0', '0'),
    ('dosfentes1', '1'),
    ('dosfentes2', '2'),
    ]
    dosfentes = forms.CharField(
        required=False,
        widget=forms.RadioSelect(
            choices=DOSFENTES_CHOICES,
            attrs={
                'class': 'classradio',
            }
        )
    )
    sansboutonniererevers = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    bordsnonpiques = forms.BooleanField(
        required=False,
        widget=forms.CheckboxInput(
            attrs={
                'class': 'check',
            }
        )
    )
    class Meta: 
        model = Veston
        fields = ('__all__')