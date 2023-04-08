<body>
	<h1>Projeto de Análise de Preferências e Fatores Externos em Compartilhamento de Caronas: Estudo de Caso em Chicago pela Zuber</h1>
	<h2>Descrição do Projeto</h2>
	<p>A Zuber é uma nova empresa de compartilhamento de caronas que está sendo lançada em Chicago. O objetivo deste projeto é encontrar padrões nas informações disponíveis para entender as preferências dos passageiros e o impacto de fatores externos nas corridas. Isso será feito através da análise de dados de concorrentes e testando hipóteses sobre o impacto do clima na frequência das viagens.</p>
  <h2>Descrição dos dados</h2>
<p>Um banco de dados com informações sobre corridas de táxi em Chicago:</p>
<ul>
	<li>tabela neighborhoods: dados sobre os bairros da cidade</li>
	<ul>
		<li>name: nome do bairro</li>
		<li>neighborhood_id: código do bairro</li>
    <p></p>
	</ul>
	<li>tabela cabs: dados sobre os táxis</li>
	<ul>
		<li>cab_id: código do veículo</li>
		<li>vehicle_id: a identificação técnica do veículo</li>
		<li>company_name: a empresa proprietária do veículo</li>
    <p></p>
	</ul>
	<li>tabela trips: dados sobre corridas</li>
	<ul>
		<li>trip_id: código da corrida</li>
		<li>cab_id: código do veículo que opera a corrida</li>
		<li>start_ts: data e hora do início da corrida (tempo arredondado para a hora)</li>
		<li>end_ts: data e hora do final da corrida (tempo arredondado para a hora)</li>
		<li>duration_seconds: duração da corrida em segundos</li>
		<li>distance_miles: distância percorrida em milhas</li>
		<li>pickup_location_id: código do bairro de retirada</li>
		<li>dropoff_location_id: código do bairro de entrega</li>
    <p></p>
	</ul>
	<li>tabela weather_records: dados sobre o clima</li>
	<ul>
		<li>record_id: código de registro meteorológico</li>
		<li>ts: grava data e hora (tempo arredondado para a hora)</li>
		<li>temperature: temperatura quando o registro foi feito</li>
		<li>description: breve descrição das condições meteorológicas, ex. "chuva leve" ou "nuvens esparsas"</li>
    <p></p>
	</ul>
</ul>
  
![Diagrama de Modelo de Dados](https://github.com/filipedominguess/Projeto-6/blob/main/Diagrama%20de%20Modelo%20de%20Dados.png?raw=true)
  
<p>Nota: não há uma conexão direta entre as tabelas trips e weather_records no banco de dados. Mas você ainda pode usar JOIN e juntá-las usando a hora em que o passeio começou (trips.start_ts) e a hora em que o registro do tempo foi feito (weather_records.ts).</p>

<h2>Análise Exploratória de Dados</h2>
<ul>
  <li>Encontre o número de corridas de táxi para cada empresa de táxi de 15 a 16 de novembro de 2017.</li>
  <li>Encontre o número de corridas para cada empresa de táxi cujo nome contém as palavras "Amarelo" ou "Azul" de 1º a 7 de novembro de 2017.</li>
  <li>Encontre o número de corridas para as empresas de táxi mais populares em novembro de 2017 e agrupe os dados por nomes de empresas de táxi.</li>
  <li>Teste a hipótese de que a duração das corridas do Loop até ao Aeroporto Internacional O'Hare muda em sábados chuvosos.</li>
</ul>
<h2>Análise Exploratória de Dados em Python</h2>
<ul>
  <li>Importe os arquivos e estude os dados que eles contêm.</li>
  <li>Verifique se os tipos de dados estão corretos.</li>
  <li>Identifique os 10 principais bairros em termos de destinos.</li>
  <li>Faça gráficos: empresas de táxi e número de corridas, 10 principais bairros por número de corridas em que esse bairro é destino.</li>
  <li>Tire conclusões com base em cada gráfico e explique os resultados.</li>
</ul>
<h2>Teste de Hipótese em Python</h2>
<ul>
  <li>Teste a hipótese: "A duração média dos passeios do Loop para o Aeroporto Internacional O'Hare muda nos sábados chuvosos".</li>
  <li>Defina o valor do nível de significância (alfa) por conta própria.</li>
  <li>Explique como você formou as hipóteses nula e alternativa, qual critério você usou para testar a hipótese e porque.</li>
</ul>
