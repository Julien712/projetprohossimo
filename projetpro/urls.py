from django.contrib import admin
from django.urls import include, path
from django.views.generic import RedirectView
from fiche import views
from accounts import views as accounts_views
from fiche.views import *
from django.contrib.auth import logout, views as views_auth
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', accounts_views.crud, name='home'),
    path('boutique/<int:pk>/', accounts_views.boutique, name='boutique'),
    path('login/', views_auth.LoginView.as_view(template_name='login.html'), name='login'),
    path('logout/', views_auth.LogoutView.as_view(), name='logout'),
    
    path('<int:pk>/creation_fichemesure/', views.multiple_form, name='creation_fichemesure'),
    path('recherchefiche/', views.rechercheFiche, name='recherchefiche'),
    path('update_fiche/<str:pk>/', views.updateFiche, name='update_fiche'),
    path('delete_fiche/<str:pk>/', views.deleteFiche, name='delete_fiche'),
    path('impression/<str:pk>/', views.impression, name='impression'),
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)