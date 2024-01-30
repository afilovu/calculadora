@doismaisdois4

Dado('que o usuário acesse a calculadora') do
     visit('https://www.theonlinecalculator.com/')
end

Quando('digitar 2+2') do
  click_button 'two'
  click_button 'add'
  click_button 'two'
  click_button 'calculate'
end

Então('o resultado deve ser 4') do
  page.find_by_id('display').value == "4"
end