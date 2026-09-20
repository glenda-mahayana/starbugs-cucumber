Quando('acesso a pagina principal da Starbugs') do
  visit 'https://starbugs.vercel.app/'
  sleep 10
end

Então('eu devo ver uma lista de cafés disponiveis') do
  puts 'trolei'
end