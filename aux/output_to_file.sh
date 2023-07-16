#!/bin/bash

# Set the output file path
output_file="/tmp/output_file.txt"
echo "" > "$output_file"

# Execute function and append the output to the file
echo "ID_Perfil | Codigo_Perfil | ID_Serviço | Codigo_Serviço" >> "$output_file"
sudo -iu postgres psql -d "bd_mac0350" -Atc "SELECT * FROM serviços_por_perfil();" >> "$output_file"
# Append an empty line
echo "" >> "$output_file"

# Execute function and append the output to the file
echo "ID_Perfil | Codigo_Perfil | N_Serviços" >> "$output_file"
sudo -iu postgres psql -d "bd_mac0350" -Atc "SELECT * FROM serviços_usados_perfil();" >> "$output_file"
# Append an empty line
echo "" >> "$output_file"

# Execute function and append the output to the file
echo "ID_Disc | Cod_Disc | ID_Docente | Nome_docente | ID_Aluno | Nome_aluno" >> "$output_file"
sudo -iu postgres psql -d "bd_mac0350" -Atc "SELECT * FROM disciplinas_mais_oferecidas1();" >> "$output_file"
# Append an empty line
echo "" >> "$output_file"

# Execute function and append the output to the file
echo "ID_Disc | Cod_Disc | ID_Docente | Nome_docente | ID_Aluno | Nome_aluno" >> "$output_file"
sudo -iu postgres psql -d "bd_mac0350" -Atc "SELECT * FROM disciplinas_mais_oferecidas2();" >> "$output_file"
# Append an empty line
echo "" >> "$output_file"

# Execute function and append the output to the file
echo "ID_Docente | Nome_Docente | N_Disciplinas" >> "$output_file"
sudo -iu postgres psql -d "bd_mac0350" -Atc "SELECT * FROM docentes_desde_2020();" >> "$output_file"
# Append an empty line
echo "" >> "$output_file"
