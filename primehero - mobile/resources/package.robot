*** Settings ***
Documentation        Aqui estarão presentes todos os recursos que compõem o projeto


##############################################
#                 Libraries                  #
##############################################

Library                    AppiumLibrary


##############################################
#                 Keywords                   #
##############################################
Resource                  keywords/kws_mobileautomation.robot


##############################################
#                 Pages                      #
##############################################
Resource                  pages/pages_home.robot

##############################################
#                 Hooks                      #
##############################################
Resource                  hooks.robot