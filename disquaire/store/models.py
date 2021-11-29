from django.db import models

# Create your models here.
# from django.db import models


from django.db import models

class Artist(models.Model):
    name = models.CharField(max_length=200, unique=True)

    class Meta:
      verbose_name = "artiste"
    def __str__(self):
      return self.name

class Contact(models.Model):
  email = models.EmailField(max_length=100)
  name = models.CharField(max_length=200)

  class Meta:
    verbose_name = "prospect"

  def __str__(self):
    return self.name


class Album(models.Model):
  reference = models.IntegerField(null=True)
  created_at = models.DateTimeField(auto_now_add=True)
  available = models.BooleanField(default=True)
  title = models.CharField(max_length=200)
  picture = models.ImageField(upload_to='profile_image', null=True, blank=True)
  artists = models.ManyToManyField(Artist, related_name='albums', blank=True)#Relation plusieurs à plusieurs

  class Meta:
    verbose_name = "disque"
  def __str__(self):
    return self.title



class Booking(models.Model):
  created_at = models.DateTimeField(auto_now_add=True)
  contacted = models.BooleanField(default=False)
  album = models.OneToOneField(Album, on_delete=models.CASCADE)#Relation un à un
  contact = models.ForeignKey(Contact, on_delete=models.CASCADE)#Relation plusieurs à un

  class Meta:
    verbose_name = "réservation"
  def __str__(self):
    return self.contact.name