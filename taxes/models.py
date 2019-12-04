from django.db import models

# Create your models here.


class Taxpayer(models.Model):
    TIN                     = models.IntegerField(unique=True)
    Name                    = models.CharField(max_length=200, blank=True)
    Gender                  = models.CharField(max_length=200, blank=True)
    Civil_Status            = models.CharField(max_length=200, blank=True)
    Birthday                = models.DateField("Birthday", null=True)
    Email                   = models.EmailField(null=True,blank=True)

    def __str__(self):
        return self.TIN

class Business(models.Model):
    SBN                     = models.IntegerField(unique=True)
    Accreditation_Number    = models.IntegerField(null=True, blank=True)
    Facility_Code           = models.CharField(max_length=200, blank=True)


    def __str__(self):
        return self.SBN

class Document(models.Model):
    DLN                     = models.IntegerField(unique=True)
    SBN                     = models.ForeignKey(Business, on_delete='CASCADE') # old
    TIN                     = models.ForeignKey(Taxpayer, on_delete='CASCADE') # new
    Registering_Office      = models.CharField(max_length=200, blank=True)
    BIR_Registration_Date   = models.DateField("BIR Registration Date", null=True)


    def __str__(self):
        return "DLN - {}".format(self.DLN)

