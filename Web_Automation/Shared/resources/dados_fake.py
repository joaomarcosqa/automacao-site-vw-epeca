import re
from faker import Faker # pip install Faker
import random           # Do próprio python
fake = Faker()
cpf = random.randrange(00000000000, 99999999999)
rg = random.randrange(000000000, 999999999)
email = fake.email()
nome = fake.name()

def nome_fake():
    return{
        nome
    }

def email_fake():
    return{
        email
    }    

def cpf_fake():
    return{
        cpf
    }    

def rg_fake():
    return{
        rg
    }        