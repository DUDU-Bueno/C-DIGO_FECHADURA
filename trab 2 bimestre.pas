Program Trabalho_Segundo_Bimestre ;
type
	dados = record
		nome: string;
		sobrenome: string;
		cpf: string;
		senha: string;
end;
var
	i: integer;
	usuario: array[1..5] of dados ;
	nome_porta: string;
	senha_porta: string;
	status: integer;
	resposta: real;
	
procedure cadastro;
begin
	for i:= 1 to 5 do
	begin
	  writeln;
		writeln(' 	CADASTRO ', i);
		writeln('_________________________________');
		writeln;
		write(' Digite o seu nome :  ');  
		readln(usuario[i].nome);
		writeln;
		write(' Digite o seu Sobrenome  :  ');
		readln(usuario[i].sobrenome);
		writeln;
		write(' Digite o seu CPF  :  ');
		readln(usuario[i].cpf);
		writeln;
		write(' Digite sua SENHA  :  ');
		readln(usuario[i].senha);
		writeln;
		write(' CADASTRO ', i ,' SALVO!  ');
		writeln;
		writeln('_________________________________');
		writeln;
		writeln;
		
	end;
	
end;

procedure alterar(i : integer);
begin
	write(' Voc� deseja alterar algum dos cadastros?  ');
	writeln;
	write(' 0 - N�o  ');
	writeln;
	write(' 1 - Sim  ');
	writeln;
	write('=> ');
	readln(resposta);
	if resposta = 1 then
		begin
		clrscr;
			write(' Digite o n�mero do cadastro que voc� deseja alterar  :  ');
			readln(i);	
			writeln;
			write(' Digite o seu nome  :  ');  
			readln(usuario[i].nome);
			writeln;
			write(' Digite o seu Sobrenome  :  ');
			readln(usuario[i].sobrenome);
			writeln;
			write(' Digite o seu CPF  :  ');
			readln(usuario[i].cpf);
			writeln;
			write(' Digite sua SENHA  :  ');
			readln(usuario[i].senha);
			writeln;
			write(' NOVO CADASTRO ', i ,' SALVO!  ');
			writeln;
			writeln;
		end
	else
	clrscr;
		writeln;
		writeln;
	
end;

procedure apagar(i : integer);
begin
	write(' Voc� deseja apagar algum dos cadastros?  ');
	writeln;
	write(' 0 - N�o  ');
	writeln;
	write(' 1 - Sim  ');
	writeln;
	writeln;
	write('=> ');
	readln(resposta);
	if resposta = 1 then
		begin
		clrscr;
			write(' Digite o n�mero do cadastro que voc� deseja apagar  :  ');
			readln(i);
			usuario[i].nome := 'exclu�do';
			usuario[i].sobrenome := 'exclu�do';
			usuario[i].cpf := 'exclu�do';
			usuario[i].senha := '00000';	
			writeln;
			write(' Usu�rio ', i ,' apagado.' );  
			writeln;
			writeln;
		end
	else
	clrscr;
		writeln;
		writeln;
	
end;

function porta(i : integer): integer;
begin
  porta := 0;
  writeln(' 	PARA ABRIR O COFRE ');
  writeln('_________________________________');
  writeln;
  write(' Digite o n�mero de um usuario  :  ');
	readln(i);
	writeln;
	write(' Digite um nome de usuario cadastrado  :  ');
	readln(nome_porta);
	writeln;
	write(' Digite a senha  :  ');
	readln(senha_porta);
	writeln('_________________________________');
	if (nome_porta = usuario[i].nome ) and (senha_porta = usuario[i].senha) then
		begin
			writeln;
			write(' Porta destrancada. Acesso liberado  ');
			writeln;
			writeln;
			porta := 1;
		end
	else
		write(' Usu�rio e (ou) senha inv�lidos!  ');
		writeln;
		writeln;
end;


Begin
	cadastro;
	alterar;
	apagar;
	porta(i);
	
			

End.