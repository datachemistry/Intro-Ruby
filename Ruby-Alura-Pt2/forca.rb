def boas_vindas
    puts "Bem vindo ao Jogo da Forca"
    puts "Qual seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n"
    puts "Começamos o jogo para você, #{nome}!"
    nome
end

def escolhe_palavra_secreta
    puts "Escolhendo uma palavra secreta ..."
    palavra_secreta = "programador"
    puts "Palavra secreta com #{palavra_secreta.size} letras, boa sorte!"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    não_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute(chutes, erros)
    puts "\n\n\n\n"
    puts "Quantos erros até agora: #{erros}."
    puts "Chutes até agora: #{chutes}."
    puts "Ente com uma letra ou uma palavra:"
    chute = gets.strip
    puts "Sera que você acertou? Você chutou #{chute}."
    puts
end



def joga(nome)
    palavra_secreta = escolhe_palavra_secreta
    
    erros = 0
    chutes = []
    pontos_ate_agora = 0
    
    while  erros < 5
        chute = pede_um_chute
        chutes << chute
     
    end
          
    puts "Voê ganhou #{pontos_ate_agora} pontos."
        
end


nome = boas_vindas

looping do
    joga nome
    if nao_quer_jogar?
        break
    end
end
