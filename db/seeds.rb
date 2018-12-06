transporte      = Category.create(name: 'Transporte')
hotel           = Category.create(name: 'Hotel')
hospedagem      = Category.create(name: 'Hospedagem')
viagem          = Category.create(name: 'Viagem')
aluguel         = Category.create(name: 'Aluguel')
carro           = Category.create(name: 'Carro')
taxi            = Category.create(name: 'Táxi')
corrida         = Category.create(name: 'Corrida')
motorista       = Category.create(name: 'Motorista')
moeda           = Category.create(name: 'Moeda')
avaliacao       = Category.create(name: 'Avaliação')
descentralizado = Category.create(name: 'Descentralizado')
correio         = Category.create(name: 'Correio')
entrega         = Category.create(name: 'Entrega')
mensagem        = Category.create(name: 'Mensagem')
ilegal          = Category.create(name: 'Ilegal')
drogas          = Category.create(name: 'Drogas')
comercio        = Category.create(name: 'Comércio')
criatividade    = Category.create(name: 'Criatividade')
tecnologia      = Category.create(name: 'Tecnologia')
financiamento   = Category.create(name: 'Financiamento')
emprestimo      = Category.create(name: 'Empréstimo')
crowdfunding    = Category.create(name: 'Crowdfunding')

Resource.create([
  {
    name: 'Airbnb',
    description: 'Esse serviço permite às pessoas alugarem suas casas por alguns dias. Ele oferece preços competitivos, comparados aos de hotéis, e evita todo o aparato regulatório, controles de zoneamento, monopólios de sindicatos e outras barreiras de entrada. Obviamente, em alguns estados, os cartéis hoteleiros não estão felizes.',
    url: 'www.airbnb.com',
    categories: [hotel, hospedagem, viagem, aluguel, avaliacao]
  },
  {
    name: 'Uber',
    description: 'Os táxis têm as suas licenças, as quais fazem subir as tarifas. É um cartel acolhedor e bem protegido. O Uber permite contornar esse sistema, encontrando grandes corridas em carros limpos e com melhores tarifas — tudo enquanto motoristas (surpresa! não licenciados) são avaliados por sua reputação.',
    url: 'www.uber.com',
    categories: [transporte, viagem, aluguel, carro, corrida, motorista, avaliacao]
  },
  {
    name: "La'zooz",
    description: "Os táxis têm as suas licenças, as quais fazem subir as tarifas. É um cartel acolhedor e bem protegido. O La'Zooz permite contornar esse sistema, encontrando grandes corridas em carros limpos e com melhores tarifas — tudo enquanto motoristas (surpresa! não licenciados) são avaliados por sua reputação. O La'Zooz é superior ao Uber por ser descentralizado, impossível de se proibir.",
    url: 'www.lazooz.org',
    categories: [transporte, viagem, aluguel, carro, corrida, motorista, avaliacao, descentralizado]
  },
  {
    name: "Bitcoin",
    description: "O governo arruinou o dinheiro há muito tempo. O mercado produziu cripto-moedas para usuários finais. Isso pode significar a morte do euro, do dólar e de outras moedas fiduciárias. As implicações são impressionantes e inspiradoras. Você também pode diversificar e manter uma reserva de valor de alta liquidez, exceto moeda legal.",
    url: 'www.lazooz.org',
    categories: [moeda, descentralizado]
  },
  {
    name: "E-mail",
    description: "O processo de destruição dos Correios como um fornecedor monopolista de correspondências é praticamente um negócio feito. Demorou 20 anos, mas agora o e-mail é o correio de primeira classe. Enquanto isso, o serviço do governo perde bilhões a cada ano. Tal provedor moribundo poderia sobreviver por décadas como um monopólio subsidiado por impostos. Mas o mercado segue em frente.",
    url: nil,
    categories: [correio, entrega, mensagem]
  },
  {
    name: "Agora",
    description: "Este site anônimo permite que você use moeda criptografada para comprar substâncias ilícitas (drogas ilegais), incluindo medicamentos e alimentos ainda não aprovados pelo FDA. Você pode achar isso alarmante, mas considere: o site traz uma bela paz a um mercado que não para, o qual o governo tornou violento e mortal.",
    url: 'www.agoradrugs.com',
    categories: [ilegal, drogas, comercio]
  },
  {
    name: "Impressão 3-D",
    description: "Não só as pessoas contornarão as restrições inconstitucionais às armas (como Cody Wilson contornou), mas as pessoas poderão ignorar as patentes e regulamentos legais ao imprimir seus próprios chuveiros de alto fluxo. Quando todo mundo é um fabricante, ninguém é regulamentado. O link é para o download do modelo da arma feita com impressora 3D.",
    url: "http://kickass.to/usearch/the%20liberator%203d%20gun/",
    categories: [criatividade, tecnologia]
  },
  {
    name: "Lending Club",
    description: "Plataforma permite que as pessoas evitem os grandes bancos e financiarem em conjunto, como tomadores e credores. Onde há comunicação, há negócios sendo fechados.",
    url: "www.lendingclub.com",
    categories: [financiamento, emprestimo, crowdfunding]
  },
])