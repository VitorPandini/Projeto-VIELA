from dataclasses import fields
from django import forms
from .models import Funcionario

class FuncForm(forms.ModelForm):
    class Meta:
        model=Funcionario
        fields=['nome','sobrenome','email','data_nasc','senha']
        
        exclude=['viela_coin']