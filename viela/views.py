from django.shortcuts import render
from .form import FuncForm

# Create your views here.


def cadastrar_usuario(request):
    form=FuncForm(request.POST)
    if request.method =='POST':
        if form.is_valid():
            form.save()
            
    return render(request,'viela/form.html',{'form':form})
