from django.db import models
from django.utils import timezone
from accounts.models import Profile


class Entete(models.Model):
    id_entete = models.AutoField(primary_key=True)
    nom = models.CharField(max_length=50, blank=True, null=True)
    curdate = models.DateField(default=timezone.now)
    reception = models.DateField(default=None)
    mesurenumero = models.CharField(max_length=50, blank=True, null=True)
    phone = models.CharField(max_length=10, blank=True, null=True)
    mail = models.EmailField(max_length=50, blank=True, null=True)
    adresse = models.CharField(max_length=50, blank=True, null=True)
    societe = models.ForeignKey(Profile, on_delete=models.CASCADE)

    def __str__(self):
        return self.nom

class Accessoires(models.Model):
    id_accessoires = models.AutoField(primary_key=True)
    pantalon = models.BooleanField(blank=True, null=True)
    veste = models.BooleanField(blank=True, null=True)
    manteau = models.BooleanField(blank=True, null=True)
    costume = models.BooleanField(blank=True, null=True)
    troispiece = models.BooleanField(blank=True, null=True)
    gilet = models.BooleanField(blank=True, null=True)
    tissu = models.CharField(max_length=50, blank=True, null=True)
    doublure = models.CharField(max_length=50, blank=True, null=True)
    boutonsnumero = models.CharField(max_length=50, blank=True, null=True)
    fournisseurtissu = models.CharField(max_length=50, blank=True, null=True)
    naturetissu = models.CharField(max_length=50, blank=True, null=True)
    feutrenumero = models.CharField(max_length=50, blank=True, null=True)
    griffe = models.BooleanField(blank=True, null=True)
    vignette = models.BooleanField(blank=True, null=True)

class Com(models.Model):
    id_com = models.AutoField(primary_key=True)
    commentaireveston = models.CharField(max_length=255, blank=True, null=True)
    commentairegilet = models.CharField(max_length=255, blank=True, null=True)
    commentairepantalon = models.CharField(max_length=255, blank=True, null=True)

class Gilet(models.Model):
    id_gilet = models.AutoField(primary_key=True)
    giletmodeltailleessaye = models.CharField(max_length=50, blank=True, null=True)
    giletmodeltaillechoisi = models.CharField(max_length=50, blank=True, null=True)
    largeuralataille = models.FloatField(blank=True, null=True)
    giletpoitrine = models.FloatField(blank=True, null=True)
    giletestomac = models.FloatField(blank=True, null=True)
    giletouverture = models.FloatField(blank=True, null=True)
    giletlongueurdevant = models.FloatField(blank=True, null=True)
    emboiterdevant = models.BooleanField(blank=True, null=True)
    pincealemmanchure = models.BooleanField(blank=True, null=True)
    boutonn = models.CharField(max_length=20, blank=True, null=True)
    bordspique = models.BooleanField(blank=True, null=True)
    bordsnonpique = models.BooleanField(blank=True, null=True)
    giletsansboutonniere = models.BooleanField(blank=True, null=True)
    giletboutonnierecouleur = models.CharField(max_length=50, blank=True, null=True)

class Pantalon(models.Model):
    id_pantalon = models.AutoField(primary_key=True)
    modeltailleessaye = models.CharField(max_length=20, blank=True, null=True)
    modeltaillechoisi = models.CharField(max_length=20, blank=True, null=True)
    ceinture = models.FloatField(blank=True, null=True)
    bassin = models.FloatField(blank=True, null=True)
    longueurcotegauche = models.FloatField(blank=True, null=True)
    longueurcotedroite = models.FloatField(blank=True, null=True)
    longueurentrejambegauche = models.FloatField(blank=True, null=True)
    longueurentrejambedroite = models.FloatField(blank=True, null=True)
    ardillon = models.BooleanField(blank=True, null=True)
    basfinirevers = models.FloatField(blank=True, null=True)
    basnonfinirevers = models.BooleanField(blank=True, null=True)
    basfinisimple = models.BooleanField(blank=True, null=True)
    basnonfinisimple = models.BooleanField(blank=True, null=True)
    largeurgenoux = models.FloatField(blank=True, null=True)
    largeurbras = models.FloatField(blank=True, null=True)
    montantdevantplus = models.FloatField(blank=True, null=True)
    montantdevantmoins = models.FloatField(blank=True, null=True)
    montantdosplus = models.FloatField(blank=True, null=True)
    montantdosmoins = models.FloatField(blank=True, null=True)
    passanttunnel = models.BooleanField(blank=True, null=True)
    sanspassant = models.BooleanField(blank=True, null=True)
    avecpatteserrage = models.BooleanField(blank=True, null=True)
    sansagrafe = models.BooleanField(blank=True, null=True)
    sanspatteprolongee = models.BooleanField(blank=True, null=True)
    smokingbaguettesoie = models.BooleanField(blank=True, null=True)
    surpiqueecouturecote = models.BooleanField(blank=True, null=True)
    nondouble = models.BooleanField(blank=True, null=True)
    doubledosgenoux = models.BooleanField(blank=True, null=True)
    doubleentierementbas = models.BooleanField(blank=True, null=True)
    fournituresnoires = models.BooleanField(blank=True, null=True)
    ceintureantiglisse = models.BooleanField(blank=True, null=True)
    btsbretelle = models.BooleanField(blank=True, null=True)
    forteethautegauche = models.FloatField(blank=True, null=True)
    forteethautedroite = models.FloatField(blank=True, null=True)
    largeurcuisseplus = models.FloatField(blank=True, null=True)
    largeurcuissemoins = models.FloatField(blank=True, null=True)
    fessierplat = models.FloatField(blank=True, null=True)
    saillante = models.BooleanField(blank=True, null=True)
    pointeentrejambeplus = models.FloatField(blank=True, null=True)
    pointeentrejambemoins = models.FloatField(blank=True, null=True)
    braguetteglissiere = models.BooleanField(blank=True, null=True)
    braguetteboutons = models.BooleanField(blank=True, null=True)
    pocherevolver = models.CharField(max_length=20, blank=True, null=True)
    avecrabat = models.BooleanField(blank=True, null=True)
    enleverrondsurhanches = models.FloatField(blank=True, null=True)
    enleverrondsurhanchesmoins = models.FloatField(blank=True, null=True)
    creuserfondplus = models.FloatField(blank=True, null=True)
    creuserfondmoins = models.FloatField(blank=True, null=True)
    portepoignardgauche = models.FloatField(blank=True, null=True)
    portepoignarddroite = models.FloatField(blank=True, null=True)
    pocheenbiais = models.BooleanField(blank=True, null=True)
    pochedanslacouture = models.BooleanField(blank=True, null=True)
    pochepassepoileesenbiais = models.BooleanField(blank=True, null=True)
    cavalieres = models.BooleanField(blank=True, null=True)
    sanspli = models.BooleanField(blank=True, null=True)
    unplisversexterieur = models.BooleanField(blank=True, null=True)
    unplisversinterieur = models.BooleanField(blank=True, null=True)
    deuxplisversexterieur = models.BooleanField(blank=True, null=True)
    deuxplisversinterieur = models.BooleanField(blank=True, null=True)
    unepochemontre = models.BooleanField(blank=True, null=True)
    pocheavecrabat = models.BooleanField(blank=True, null=True)

class Veston(models.Model):
    id_veston = models.AutoField(primary_key=True)
    veston_taille_essaye = models.CharField(max_length=50, blank=True, null=True)
    veston_taille_choisi = models.CharField(max_length=50, blank=True, null=True)
    nombre_de_boutons = models.FloatField(blank=True, null=True)
    demipoitrine = models.FloatField(blank=True, null=True)
    demiestomac = models.FloatField(blank=True, null=True)
    demibassin = models.FloatField(blank=True, null=True)
    largeurepaule = models.FloatField(blank=True, null=True)
    undemicarrure = models.FloatField(blank=True, null=True)
    longueur_dos_finie = models.FloatField(blank=True, null=True)
    longueurmanchegauche = models.FloatField(blank=True, null=True)
    longueurmanchedroite = models.FloatField(blank=True, null=True)
    undemilargeurtaille = models.FloatField(blank=True, null=True)
    veston_normal = models.FloatField(blank=True, null=True)
    reins_creux = models.FloatField(blank=True, null=True)
    renverse = models.FloatField(blank=True, null=True)
    dos_rond = models.FloatField(blank=True, null=True)
    voute_penche = models.FloatField(blank=True, null=True)
    ventru = models.FloatField(blank=True, null=True)
    athletique = models.FloatField(blank=True, null=True)
    premierbouton = models.FloatField(blank=True, null=True)
    undemicroisureplus = models.FloatField(blank=True, null=True)
    undemicroisuremoins = models.FloatField(blank=True, null=True)
    decrocherdevant = models.FloatField(blank=True, null=True)
    poitrineplate = models.FloatField(blank=True, null=True)
    poitrineforte = models.BooleanField(blank=False, null=True, default=False)
    largeurbassindosplus = models.FloatField(blank=True, null=True)
    largeurbassindosmoin = models.FloatField(blank=True, null=True)
    manteauavecsouspatte = models.BooleanField(blank=True, null=True)
    manteauavecsousceinture = models.BooleanField(blank=True, null=True)
    droitesarabat = models.BooleanField(blank=True, null=True)
    sansrabat = models.BooleanField(blank=True, null=True)
    pocheticketexterieure = models.BooleanField(blank=True, null=True)
    sanspochepoitrine = models.BooleanField(blank=True, null=True)
    deuxpochesplaquees = models.BooleanField(blank=True, null=True)
    troispochesplaquees = models.BooleanField(blank=True, null=True)
    pochelunette = models.BooleanField(blank=True, null=True)
    brasenavant = models.FloatField(blank=True, null=True)
    brasenarriere = models.FloatField(blank=True, null=True)
    emmanchurecombler = models.FloatField(blank=True, null=True)
    emmanchurecreuser = models.FloatField(blank=True, null=True)
    brasfort = models.FloatField(blank=True, null=True)
    brasmince = models.FloatField(blank=True, null=True)
    basdemanche = models.FloatField(blank=True, null=True)
    hautdemancheplus = models.FloatField(blank=True, null=True)
    hautdemanchemoins = models.FloatField(blank=True, null=True)
    sansgarde = models.BooleanField(blank=True, null=True)
    preparerboutonniere = models.BooleanField(blank=True, null=True)
    executerboutonniere = models.BooleanField(blank=True, null=True)
    executerboutonnierenpo = models.BooleanField(blank=True, null=True)
    boutonchevauchant = models.BooleanField(blank=True, null=True)
    colorismanche = models.CharField(max_length=50, blank=True, null=True)
    doublagemignonette = models.BooleanField(blank=True, null=True)
    coudesencuir = models.BooleanField(blank=True, null=True)
    nepasmonterlesmanches = models.BooleanField(blank=True, null=True)
    coucourt = models.FloatField(blank=True, null=True)
    coulong = models.FloatField(blank=True, null=True)
    coumince = models.FloatField(blank=True, null=True)
    plissouscol = models.FloatField(blank=True, null=True)
    ephautesgauche = models.FloatField(blank=True, null=True)
    ephautesdroite = models.FloatField(blank=True, null=True)
    epnormalgauche = models.FloatField(blank=True, null=True)
    epnormaldroite = models.FloatField(blank=True, null=True)
    epbassesgauche = models.FloatField(blank=True, null=True)
    epbassesdroite = models.FloatField(blank=True, null=True)
    epsemidouble = models.BooleanField(blank=True, null=True)
    epsansepaulettes = models.BooleanField(blank=True, null=True)
    epaulettesplusfines = models.BooleanField(blank=True, null=True)
    epsanscigarette = models.BooleanField(blank=True, null=True)
    osgauche = models.FloatField(blank=True, null=True)
    osdroite = models.FloatField(blank=True, null=True)
    monogrammecoloris = models.CharField(max_length=20, blank=True, null=True)
    monogrammestyle = models.CharField(max_length=20, blank=True, null=True)
    dosfentes = models.CharField(max_length=20, blank=True, null=True)
    boutondevantcoloris = models.CharField(max_length=20, blank=True, null=True)
    boutonreverscoloris = models.CharField(max_length=20, blank=True, null=True)
    sansboutonniererevers = models.BooleanField(blank=True, null=True)
    filboutons = models.CharField(max_length=20, blank=True, null=True)
    colombiacoloris = models.CharField(max_length=20, blank=True, null=True)
    amftoutescoutures = models.FloatField(blank=True, null=True)
    amf = models.FloatField(blank=True, null=True)
    bordsnonpiques = models.BooleanField(blank=True, null=True)
    biaispassepoilscoloris = models.CharField(max_length=20, blank=True, null=True)
    colorisboutonnieres = models.CharField(max_length=20, blank=True, null=True)
    coloris2boutonnieres = models.CharField(max_length=20, blank=True, null=True)
    coloris1boutonnieres = models.CharField(max_length=20, blank=True, null=True)