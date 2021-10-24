*** Settings ***
Documentation        Aqui estarão presentes todas as variáveis/elementos da tela Home do site automationpractice

*** Variables ***
&{HOME}
...    TITLE_PAGE_HOME=My Store  
...    HEADER_OPTIONS=//*[@id="block_top_menu"]/ul
...    INPUT_BUSCA=search_query_top
...    BTN_PESQUISAR=submit_search
...    IMG_BLOUSE=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
...    TITLE_PAGE_PESQUISA=Search - My Store