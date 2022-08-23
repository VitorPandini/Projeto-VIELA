from django.db import models

# Create your models here.

class Funcionario(models.Model):
    nome=models.CharField(max_length=40)
    sobrenome=models.CharField(max_length=40)
    email=models.EmailField(unique=True,null=False)
    data_nasc=models.DateField(null=False)
    viela_coin=models.IntegerField(default=30,null=True)
    senha=models.CharField(max_length=20 ,default='DEFAULT VALUE')
    
    def __str__(self):
        return (self.nome,self.sobrenome)
    
