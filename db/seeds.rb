transporte      = Category.create(name: 'Transporte')
hotel           = Category.create(name: 'Hotel')
hospedagem      = Category.create(name: 'Hospedagem')
viagem          = Category.create(name: 'Viagem')
aluguel         = Category.create(name: 'Aluguel')
bitcoin         = Category.create(name: 'Bitcoin')
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
seguro          = Category.create(name: 'Seguro')
ilegal          = Category.create(name: 'Ilegal')
drogas          = Category.create(name: 'Drogas')
comercio        = Category.create(name: 'Comércio')
criatividade    = Category.create(name: 'Criatividade')
tecnologia      = Category.create(name: 'Tecnologia')
financiamento   = Category.create(name: 'Financiamento')
emprestimo      = Category.create(name: 'Empréstimo')
crowdfunding    = Category.create(name: 'Crowdfunding')
arbitragem      = Category.create(name: 'Arbitragem')
juizado         = Category.create(name: 'Juizado')
farmacia        = Category.create(name: 'Farmácia')
remedio         = Category.create(name: 'Remédios')
seasteading     = Category.create(name: 'Seasteading')
habitacao       = Category.create(name: 'Habitação')
homeschooling   = Category.create(name: 'Home Schooling')
educacao        = Category.create(name: 'Educação')
curso           = Category.create(name: 'Cursos')

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
    categories: [moeda, descentralizado, bitcoin]
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
  {
    name: "Arbitranet",
    description: "A Arbitranet é uma Câmara de Arbitragem que soluciona conflitos a custos acessíveis e por árbitros especializados. Seu conflito terá uma sentença em até 100 dias. Incluindo toda análise de alegações, documentos e audiência.",
    url: "https://arbitranet.com.br/",
    categories: [arbitragem, juizado]
  },
  {
    name: "Couchsurfing",
    description: "Pessoas disponibilizam suas casas para viajantes se hospedarem de graça, e sabem que, quando viajarem, também encontrarão pousada. O único sistema de controle são as opiniões dos próprios usuários publicadas no site. Qualquer um pode se cadastrar. E adivinhem: funciona muito bem",
    url: "www.couchsurfing.com",
    categories: [hotel, hospedagem, viagem, avaliacao]
  },
  {
    name: "TOR / Deep Web",
    description: "Esse navegador para a web criptografada rejeita seu endereço originário de IP por todo o planeta. Desse modo você pode surfar anonimamente longe dos olhos do governo.",
    url: "www.torproject.org",
    categories: [descentralizado, tecnologia, seguro]
  },
  {
    name: "Liberty.me",
    description: "Esse navegador para a web criptografada rejeita seu endereço originário de IP por todo o planeta. Desse modo você pode surfar anonimamente longe dos olhos do governo.",
    url: "http://liberty.me",
    categories: [criatividade]
  },
  {
    name: "JCM Pharmacy",
    description: "Você pode comprar seus remédios baratos de muitos países agora — de modo seguro, barato e garantido (e sem receita). Não há necessidade de pagar plano médico estatal ou a Indústria Farmacêutica. Aceitam bitcoin também.",
    url: "http://jcmrx.es",
    categories: [farmacia, remedio]
  },
  {
    name: "Blueseed",
    description: "É um dos primeiros exemplos de empreendimento que levarão as pessoas para o mar em busca de oportunidade e de um conjunto superior de regras.",
    url: "https://blueseed.com/",
    categories: [seasteading, habitacao]
  },
  {
    name: "Seasteading Institute",
    description: "O Seasteading Institute também trabalhou com sucesso com uma empresa holandesa para projetar os primeiros módulos Seasteading. Quanto mais o estado impõe impostos e regulações, mais viável é para o mar se tornar o lugar para viver e fazer negócios.",
    url: "http://www.seasteading.org",
    categories: [seasteading, habitacao]
  },
  {
    name: "Home Schooling Brasil no Facebook",
    description: " Se você não gosta das escolas governamentais, tire suas crianças de lá. Milhões de famílias estão fazendo isso. Algumas estão formando cooperativas virtuais e obtendo conteúdo de fontes online. O grupo no facebook Home Schooling Brasil tem muita informação sobre.",
    url: "www.fb.com/groups/homeschoolingbrasil",
    categories: [homeschooling, educacao]
  },
  {
    name: "Ron Paul Curriculum",
    description: "Se você está procurando um currículo academicamente rigoroso, mas que libere os pais das tarefas de criação de planos de aulas diárias e ensino prático, este currículo é para você.",
    url: "https://www.ronpaulcurriculum.com/",
    categories: [homeschooling, educacao]
  },
  {
    name: "Portal Educacão",
    description: "O site Portal Educação e outras fontes online estão reduzindo os custos da educação — longe das guildas infladas da educação superior e dos campos de doutrinação que usam dinheiro público.",
    url: "www.portaleducacao.com.br",
    categories: [homeschooling, educacao, curso]
  },
  {
    name: "Khan Academy",
    description: "A Khan Academy proporciona uma educação gratuita e de alta qualidade para todos, em qualquer lugar.",
    url: "http://pt.khanacademy.org",
    categories: [homeschooling, educacao, curso]
  },
  {
    name: "BTCJam",
    description: "Empreste ou invista bitcoins usando somente a confiança em acordos voluntários entre pessoas com BTCJam. Aprenda como ter lucro investindo e baixas taxas emprestando bitcoin. Há como você ver o histórico de transações e depoimentos de pessoas que concederam ou receberam empréstimos com outros usuários, igual ao Ebay e Mercado Livre.",
    url: "http://btcjam.com.br/",
    categories: [bitcoin, moeda, descentralizado, emprestimo]
  }
])