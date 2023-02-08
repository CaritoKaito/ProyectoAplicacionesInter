from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from Logica import Test

# Create your views here.
def index(request):
    response = {
    "status": "sucessfull",
    "code": 200,
    "data": Test.f()
    }
    return JsonResponse(response)
