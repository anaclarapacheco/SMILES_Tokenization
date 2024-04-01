vocabulary = [" ", "^", "&", "?", "C", "N", "(", ")", "c", "1", "n", "2", "-", "Cl", "=", "O", "Br", "[", "+", "]", "s", "F", "#", "S", "H", "3"]

smiles = input("Digite o valor a ser codificado: ", "s");

encoded = zeros(1, length(smiles));

for k = 1:length(smiles)
    current_char = smiles(k);
    for i = 1:length(vocabulary)
        if vocabulary(i) == smiles(k)
            encoded(k) = i;
        end
    end
end

disp(encoded);


%{
smiles = input("Digite o valor a ser codificado: ", "s");

vocabulary = dictionary({" ", "^", "&", "?", "C", "N", "(", ")", "c", "1", "n", "2", "-", "Cl", "=", "O", "Br", "[", "+", "]", "s", "F", "#", "S", "H", "3"},0:25);

encoded = zeros(1,length(smiles));

for k = 1:length(smiles)
    current_char = smiles(k);
        
    if isKey(vocabulary, current_char)
        encoded = [encoded, vocabulary(current_char)];
    end
end

disp(vocabulary.keys);
disp(vocabulary.values);

disp(encoded);
%}