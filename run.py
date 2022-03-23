    
import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
# import config
    
for param in sys.argv[1:]:
    if param == "-web":
        command = "robot -d ./evidencias ./Web_Automation/Tests/*.robot "
    elif param == "-carrinho":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_carrinho.robot "
    elif param == "-busca":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_de_busca.robot "
    elif param == "-cadastro":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_de_cadastro.robot "
    elif param == "-compras":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_de_compras.robot "
    elif param == "-login":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_de_login.robot "
    elif param == "-conta":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_info_conta.robot "
    elif param == "-api":
        command = "robot -d ./evidencias ./API_Automation/Tests/*.robot "
    elif param == "-dealernet":
        command = "robot -d ./evidencias ./API_Automation/Tests/dealernet.robot "
    elif param == "-nbsnasa":
        command = "robot -d ./evidencias ./API_Automation/Tests/nbs_nasa.robot "
    elif param == "-nbs":
        command = "robot -d ./evidencias ./API_Automation/Tests/nbs.robot "
    elif param == "-sercondistac":
        command = "robot -d ./evidencias ./API_Automation/Tests/sercon_distac.robot "
    elif param == "-sercon":
        command = "robot -d ./evidencias ./API_Automation/Tests/sercon.robot "
    elif param == "-sinc":
        command = "robot -d ./evidencias ./API_Automation/Tests/sinc.robot "
    elif param == "-ssr":
        command = "robot -d ./evidencias ./API_Automation/Tests/ssr.robot "
    elif param == "-vw":
        command = "robot -d ./evidencias ./API_Automation/Tests/vw.robot "
    elif param == "-pecas_vw":
        command = "robot -d ./evidencias ./API_Automation/Tests/pecas_vw.robot "
os.system(command)
