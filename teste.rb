# aula 02
=begin

puts "oi"
puts "============="
a = 150
b = 300
s = a+b
puts "a #{a} + b #{b} é s #{s}"
puts "============="

a = 21938
b = 344
s = a / b
m = a % b
e = a**b
#puts "s  #{s.round(4)}"
puts " m = #{m}"
#puts " e = #{e}"

puts " digite um numero"
num1 = (gets.chomp).to_i
num2 = (gets.chomp).to_f
soma = num1 + num2
puts "o soma é #{soma}"
puts soma.class

caju  = [1,2]
puts "caju atual é #{caju}"
puts "digite a posição 0 de caju"
caju [0] = (gets.chomp).to_f
puts "a clase de caju é #{caju.class} " 
puts "o valor do objeto caju é #{caju}"

puts "digite um número"
a = gets.chomp.to_i
puts "digite outro número"
b = gets.chomp.to_i
s = a + b 
puts " a soma de #{a} + #{b} é = #{s}"


puts "digite sua idade"
a = gets.chomp.to_i

if a<0
  puts "IDADE INVÁLIDA" 
elsif a>=0 && a<18
  puts "MENOR idade"
elsif a>=18 && a<60
  puts "MAIOR"
else 
  puts "IDOSO"
end

puts "digite sua idade"
a = gets.chomp.to_i
convite = "SIM"

if (a<0 && convite == "SIM")
  puts "IDADE INVÁLIDA" 
elsif ((a>=0 && a<18) || convite == "NÃO")
  puts "NÃO AUTORIZADO"
elsif ((a>=18 && a<60) && convite == "SIM")
  puts "AUTORIZADO"
else 
  puts "IDOSO, ENTRA SEM CONVITE"
end


# aula 03
i=0
while i <=5
  puts "o valor de i é #{i}"
  if i == 3
    break
  end
  i = i + 1
end
puts "\nFim do loop"


puts "digite do valor informado"
valor = gets.chomp.to_i
i = 1
puts "tabuada de #{valor}"
while i <= 10
  puts "tabuade de #{i} x #{valor} =  #{i*valor} "
  i = i + 1
end

puts "digite do valor informado"
valor = gets.chomp.to_i
i = 1
puts "tabuada de #{valor}"
10.times do 
  puts "tabuade de #{i} x #{valor} =  #{i*valor} "
  i = i + 1
end

puts "digite do valor informado"
valor = gets.chomp.to_i
i = 1
puts "tabuada de #{valor}"
for i in 1..10
  puts "tabuade de #{i} x #{valor} =  #{i*valor} "
  i = i + 1
end

v = ["ruby","python","java"]
for i in v
  puts "eu gosto da linguaem #{i}"
end

produtos = ["maçã kg ","leite L ","Pão caixa "," café 500g ","Quejo 100g "]
precos = [7.9,4.50,8.2,15.75,12.30]
total = 0.0
i = 0
puts "itens no seu carrrinho de compra"
i=0
total_gasto = 0.0
while i <= produtos.length-1
  puts "produto #{produtos[i]} preço #{precos[i].round(3)}"
  total_gasto = total_gasto + precos[i].round(2)
  i = i + 1
end
  
puts "o total gasto foi de #{total_gasto.round(2)}"

produtos = ["maçã kg ","leite L ","Pão caixa "," café 500g ","Quejo 100g "]
precos = [7.9,4.50,8.2,15.75,12.30]
total = 0.0
i = 0
puts "itens no seu carrrinho de compra"
a=0
total_gasto = 0.0
for i in a..produtos.length-1
  puts "produto #{produtos[i]} preço #{precos[i].round(3)}"
  total_gasto = total_gasto + precos[i].round(2)
  if produtos[i] == "maçã kg "
    break
  end
  i = i + 1
end
  
puts "o total gasto foi de #{total_gasto.round(2)}"

vetor = ["joão","maria","pedro"]
puts " ---"
vetor.each do |variavel|
  puts "olá aluno #{variavel}"
end
puts " ---"

puts "boa vindas"
puts "quantas notas que inserir"
qtd_notas = gets.chomp.to_i
notas = []

qtd_notas.times do |i|
  puts "digita a nota do #{i+1}ª do aluno"
  nota_aluno = gets.chomp.to_f
  notas << nota_aluno
end 
puts "----"
soma_total = 0.0
notas.each do |indice|
  soma_total += indice
end
puts soma_total.round(2)

# aula 04

a = [] #array
i = 0
for i in 0..10
  a[i] = 10 + i
end
#a.each do |elemento|
  #puts "conteúdo do vetor #{elemento}"
#end
puts " "
puts a.inspect
puts " "
for i in 0..5
  a << i+25
end
puts a.inspect
puts " "
x =a.pop
puts "x = #{x}"
puts " "
puts a.inspect
puts " "
a.delete(15) #elemento
puts a.inspect
puts " "
a.delete_at(0) #endereço
puts a.inspect
puts " "
b = a.shift
x = a.pop
puts a.inspect # remove o 1 elemento
puts " "
puts "b = #{b} x = #{x}"

fila = [{nome: "Rafa"},{nome: "PJ"},{nome: "CPF"}]
fila.each do |indice|
  puts "atendimento da pessoa #{indice[:nome]}"
  puts " "
  if indice[:nome] =="Rafa"
    break
  end
end

a = [0,1,2,3]
v = {nome:"BJ",cidade:"Rec",voo:"123"} #chaves
puts v.class
puts " "
puts v.inspect
puts " "
# puts v[:nome] #colchetes
v[:hora] = "15:30"
puts v.inspect
# puts "meu nome é #{v[:nome]} minha cidade é #{v[:cidade]} meu voo é #{v[:voo]} horário do voo é #{v[:hora]}"

v.each do |chave,valor|
  puts "chave = #{chave} e valor = #{valor}"
end

h = {nome:"CPF",
    preco:15.30,
    cor:"AZUL"}
h.each do |chave,valor|
  puts "chave -> #{chave} ,valor -> #{valor}"
end
puts "nome -> #{h[:nome]} , preço -> #{h[:preco]} , cor -> #{h[:cor]}"

turma = [
        {matricula:01, nome:"CPF1", nota:9.0},
        {matricula:02, nome:"CPF2", nota:8.0},
        {matricula:03, nome:"CPF3", nota:9.3},
        {matricula:04, nome:"CPF4", nota:8.7}
      ]

puts turma
puts "---------------"
turma.each do |indice|
  puts "matricula -> #{indice[:matricula]}, aluno: #{indice[:nome]}, nota= #{indice[:nota]}"
end
puts "---------------"

=end

# aula 5
turma = ["CPF","CNPJ"]
turma.each do |indice|
  puts "#{indice}"
end
puts "---------------"

# metódo incluir, inclui nome do aluno na turma
def incluir(nome,turma)
  turma << nome
end
def mostrar_saudacao(assinatura="")
  puts "olá, bem vindo fulano(a)  #{assinatura}"
end
for numero in 0..2 do
  incluir(numero,turma)
end
def caixa
  puts "********************************"
  puts "*                              *"
  puts "*                              *"
  puts "*                              *"
  puts "*                              *"
  puts "********************************"
end
def linha
  puts "_____________________"
end
def principal
  loop do
    linha
    puts "1 para imprimir a lista"
    puts "2 para incluir na lista"
    puts "3 para atualizar a lista"
    puts "4 para deletar o elemento da lista"
    puts "escolha a opção de 1 a 4, 9 para sair"
    linha
    opcao = gets.chomp.to_i
    if opcao == 9
      break
    end
  end
end
def verificar_idade(idade)
  while idade >=0
    if idade >= 0 && idade <18
      puts "menor idade"
    elsif idade >18 && idade < 60
      puts "adulto"
    elsif idade >= 60 
      puts "idoso"
    else
      puts "idade negativa"     
    end
    puts "digite idade, -1 para fim"
    idade = gets.chomp.to_i
  end
  puts "fim"
end
incluir("JN",turma)
incluir("PATRICIA",turma)
mostrar_saudacao("MARIA")
mostrar_saudacao("JOSE")
#caixa
#principal
#puts "digite um valor"
#a = gets.chomp.to_i
#verificar_idade(a)
def tabuada(numero)
  puts "tabuada do número #{numero}"
  for i in 1..10
    puts "#{i} x #{numero} = #{i*numero}"
  end
end
def soma(a,b)
   return a+b
end
#tabuada(a)
resultado = soma(15,15)
puts resultado