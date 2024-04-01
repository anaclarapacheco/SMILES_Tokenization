vocabulary = [' ', '^', '&', '?', 'C', 'N', '(', ')', 'c', '1', 'n', '2', '-', 'Cl', '=', 'O', 'Br', '[', '+', ']', 's', 'F', '#', 'S', 'H', '3'];
% Melhorias:
% usar dicionario!
% buscar bd de smiles para usar no vocabulay!

file_name = 'test_smiles_menos.txt';

arquivo = fopen(file_name, 'r');

if arquivo == -1
    error('Não foi possível abrir o arquivo.');
end

linha = fgetl(arquivo); % fgetl le a proxima linha do arquivo
smiles = [];

while linha ~= -1
    smiles = [smiles; string(linha)];
    linha = fgetl(arquivo);
end

fclose(arquivo);    


tamanho = size(char(smiles));
encoded = zeros(size(smiles));

for k = 1:tamanho(1)    
    for j = 1:tamanho(2)
        current_char = char(smiles(k));
        for i = 1:length(vocabulary)
            try
                if vocabulary(i) == current_char(1,j)
                    encoded(k,j) = i-1;
                    break;
                end
            catch
                encoded(k,j) = NaN;
            end
        end
    end
end
