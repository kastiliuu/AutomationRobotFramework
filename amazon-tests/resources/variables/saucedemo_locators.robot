*** Variables ***

# Elementos para a página de login
${CAMPO_USUARIO}    id=username
${CAMPO_SENHA}      id=password
${BOTAO_LOGIN}      id=login-button
${LOGO_SAUCELABS}   xpath=//div[@class='bot_column']//img

# Elementos para a página inicial
${BOTAO_ADICIONAR_CARRINHO}    xpath=//button[@data-test='add-to-cart-sauce-labs-backpack']
${BOTAO_CARRINHO}              xpath=//a[@class='shopping_cart_link']
${BOTAO_REMOVER}              xpath=//button[@data-test='remove-sauce-labs-backpack']
