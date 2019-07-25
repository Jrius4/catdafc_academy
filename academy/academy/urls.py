"""academy URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from django.conf.urls import url

from apps.posts.views import (index, blog, post,
                              search, add_post_tiny,
                              edit_post_tiny, post_update,
                              post_delete, post_create)

from apps.soccerplayers.views import(player_list,executive_team_list,
                                    technical_team_list,technical_member,
                                    create_player,player,
                                    update_player, delete_player,
                                    executive, create_executive,
                                    update_executive,delete_executive,
                                    update_technical_member,delete_technical_member,
                                    create_technical_member)

from apps.accounts.views import profile
from apps.backend.views import (backend, player_index, create_splayer,
                                update_splayer, delete_splayer,
                                catda_post_create,catda_post_update,
                                catda_post_index,catda_post_delete)

from apps.catda.views import (catda_index,catda_about,
                              catda_match,catda_team,
                              catda_news,catda_contact)


urlpatterns = [
    path('admin/', admin.site.urls),
    #catda routes
    path('', index),
    path('about/', catda_about),
    path('matches/', catda_match),
    path('team/', catda_team),
    path('news/', catda_news),
    path('contact/', catda_contact),

    #more routes
    path('index/', index),
    path('blog/', blog, name='post-list'),
    path('search/', search, name='search'),
    path('createpost/', post_create, name='post-create'),
    path('post/<id>/', post, name='post-detail'),
    path('post/<id>/update/', post_update, name='post-update'),
    path('post/<id>/delete/', post_delete, name='post-delete'),
## backend
    # catda players
    path('admin-backend/', backend, name="backend"),
    path('admin-backend/players/', player_index,name='backend-players'),
    path('admin-backend/players/player-create/', create_splayer, name='backend-create-player'),
    path('admin-backend/players/<id>/update/', update_splayer, name='backend-update-player'),
    path('admin-backend/players/<id>/delete/', delete_splayer, name='backend-delete-player'),
    # posts
    path('admin-backend/posts/post-create/', catda_post_create, name='backend-create-post'),
    path('admin-backend/posts/', catda_post_index,name='backend-posts'),
    path('admin-backend/posts/<id>/update/', catda_post_update, name='backend-update-post'),
    path('admin-backend/posts/<id>/delete/', catda_post_delete, name='backend-delete-post'),



    path('ckeditor/', include('ckeditor_uploader.urls')),
    url(r'^tinymce/', include('tinymce.urls')),

    ## roles lists
    path('players/', player_list, name='player-list'),
    path('executives/', executive_team_list, name='executive-list'),
    path('technicalteams/', technical_team_list, name='technical-member-list'),



    path('players/<id>/', player, name='player-detail'),
    path('accounts/profile/', profile, name='profile'),
    path('executives/<id>/', executive, name='executive-detail'),
    path('technicalteams/<id>/', technical_member, name='technical-member-detail'),
    path('createplayer/', create_player, name='create-player'),
    path('createexecutive/', create_executive, name='create-executive'),
    path('createtechnicalmember/', create_technical_member, name='create-technical-member'),
    path('executive/<id>/update/', update_executive, name='update-executive'),
    path('executive/<id>/delete/', delete_executive, name='delete-executive'),
    path('technicalteams/<id>/update/', update_technical_member, name='update-technical-member'),
    path('technicalteams/<id>/delete/', delete_technical_member, name='delete-technical-member'),
    path('players/<id>/update/', update_player, name='update-player'),
    path('players/<id>/delete/', delete_player, name='delete-player'),
    # allauth path
    path('accounts/', include('allauth.urls')),

    # apis endpoints
    path('dev/', include('apps.players.urls')),
    # leads
    path('dev/', include('apps.soccerplayers.urls')),

    path('add/post_tiny', add_post_tiny, name='add_post_tiny'),
    path('edit/post_tiny/<int:post_tiny_id>/',
         edit_post_tiny, name='edit_post_tiny'),

]
# Added this content
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL,
                          document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)

