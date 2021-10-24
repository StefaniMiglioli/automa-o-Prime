*** Settings ***
Documentation        Aqui estarão presentes todos os recursos que compõem o projeto


##############################################
#                 Libraries                  #
##############################################
Library                    SeleniumLibrary

##############################################
#                 Keywords                   #
##############################################
Resource                  keywords/kws_webautomation.robot

##############################################
#                 Pages                      #
##############################################
Resource                  pages/pages_home.robot

##############################################
#                 Hooks                      #
##############################################
Resource                  hooks.robot