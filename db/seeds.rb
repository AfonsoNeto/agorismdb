transporte       = Category.create(name: 'Transporte'       )
hotel            = Category.create(name: 'Hotel'            )
busca            = Category.create(name: 'Busca'            )
hospedagem       = Category.create(name: 'Hospedagem'       )
viagem           = Category.create(name: 'Viagem'           )
aluguel          = Category.create(name: 'Aluguel'          )
bitcoin          = Category.create(name: 'Bitcoin'          )
carro            = Category.create(name: 'Carro'            )
taxi             = Category.create(name: 'Táxi'             )
corrida          = Category.create(name: 'Corrida'          )
motorista        = Category.create(name: 'Motorista'        )
moeda            = Category.create(name: 'Moeda'            )
criptomoeda      = Category.create(name: 'Criptomoeda'      )
avaliacao        = Category.create(name: 'Avaliação'        )
descentralizado  = Category.create(name: 'Descentralizado'  )
correio          = Category.create(name: 'Correio'          )
entrega          = Category.create(name: 'Entrega'          )
mensagem         = Category.create(name: 'Mensagem'         )
seguro           = Category.create(name: 'Seguro'           )
ilegal           = Category.create(name: 'Ilegal'           )
drogas           = Category.create(name: 'Drogas'           )
comercio         = Category.create(name: 'Comércio'         )
criatividade     = Category.create(name: 'Criatividade'     )
tecnologia       = Category.create(name: 'Tecnologia'       )
financiamento    = Category.create(name: 'Financiamento'    )
emprestimo       = Category.create(name: 'Empréstimo'       )
crowdfunding     = Category.create(name: 'Crowdfunding'     )
arbitragem       = Category.create(name: 'Arbitragem'       )
juizado          = Category.create(name: 'Juizado'          )
farmacia         = Category.create(name: 'Farmácia'         )
remedio          = Category.create(name: 'Remédios'         )
seasteading      = Category.create(name: 'Seasteading'      )
habitacao        = Category.create(name: 'Habitação'        )
homeschooling    = Category.create(name: 'Home Schooling'   )
educacao         = Category.create(name: 'Educação'         )
curso            = Category.create(name: 'Cursos'           )
social           = Category.create(name: 'Social'           )
caridade         = Category.create(name: 'Caridade'         )
voluntarismo     = Category.create(name: 'Voluntarismo'     )
livros           = Category.create(name: 'Livros'           )
compartilhamento = Category.create(name: 'Compartilhamento' )
roupas           = Category.create(name: 'Roupas'           )
torrent          = Category.create(name: 'Torrent'          )
peer_to_peer     = Category.create(name: 'Peer-to-peer'     )
p2p              = Category.create(name: 'P2P'              )
empreendedorismo = Category.create(name: 'Empreendedorismo' )

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
    categories: [moeda, criptomoeda, descentralizado, bitcoin]
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
    categories: [ilegal, drogas, comercio, criptomoeda]
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
    url: "http://www.lendingclub.com",
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
    url: "http://www.couchsurfing.com",
    categories: [hotel, hospedagem, viagem, avaliacao]
  },
  {
    name: "TOR / Deep Web",
    description: "Esse navegador para a web criptografada rejeita seu endereço originário de IP por todo o planeta. Desse modo você pode surfar anonimamente longe dos olhos do governo.",
    url: "http://www.torproject.org",
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
    url: "http://www.fb.com/groups/homeschoolingbrasil",
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
    url: "http://www.portaleducacao.com.br",
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
    categories: [bitcoin, moeda, criptomoeda, descentralizado, emprestimo]
  },
  {
    name: "Bliive",
    description: "É um site que acredita na colaboração como forma de revolucionar a ideia de valor, aproximando pessoas através do compartilhamento de experiências. Cada minuto de troca de conhecimentos é contabilizado e revertido em moeda virtual, que pode ser usada a qualquer momento.",
    url: "http://bliive.com",
    categories: [criptomoeda, criatividade, educacao, voluntarismo]
  },
  {
    name: "Kickass Torrents",
    description: "A sobrevivência e persistência do compartilhamento de arquivo por meio dos “torrents” mostra que a desobediência civil em face de monopólios intelectuais está viva e bem, apesar de uma guerra de 20 anos contra a prática. Quanto mais os monopolistas lutam, mais os compartilhadores de arquivos ganham. Difunda a pirataria.",
    url: "https://kickass.how/",
    categories: [busca, torrent, peer_to_peer, p2p]
  },
  {
    name: "Lê Livros",
    description: "Site que busca facilitar o acesso a leitura gratuita. Além de disponibilizar milhares de títulos gratuitamente, o que por si só já é algo incrível, o site também disponibiliza nos formatos PDF, ePUB (iPad e Kindle) e Mobi (Amazon), além de também disponibilizar um link para você ler on line, caso não queira baixar.",
    url: "http://lelivros.love/",
    categories: [educacao, livros, criatividade, compartilhamento]
  },
  {
    name: "e-Livros",
    description: "Site que busca facilitar o acesso a leitura gratuita. Além de disponibilizar milhares de títulos gratuitamente, o que por si só já é algo incrível, o site também disponibiliza nos formatos PDF, ePUB (iPad e Kindle) e Mobi (Amazon), além de também disponibilizar um link para você ler on line, caso não queira baixar.",
    url: "https://elivros.info/",
    categories: [educacao, livros, criatividade, compartilhamento]
  },
  {
    name: "Ideias Radicais",
    description: "Rede com banco de registro de pessoas e grupos com interesse em defesa da liberdade. Conta com um mapa interativo que ajuda a encontrar eventos relacionados às ideias de liberdade e grupos de estudo na sua região.",
    url: "https://ideiasradicais.com.br/",
    categories: [compartilhamento, educacao, voluntarismo]
  },
  {
    name: "Enjoei",
    description: "Seu armário tá cheio de coisa que você não usa mais? Enjoou? A gente sabe como é. Vem com a gente! Venda o que te enjoa. Compre de gente boa...",
    url: "http://www.enjoei.com.br",
    categories: [comercio, ]
  },
  {
    name: "The Pirate Bay",
    description: "A sobrevivência e persistência do compartilhamento de arquivo por meio dos “torrents” mostra que a desobediência civil em face de monopólios intelectuais está viva e bem, apesar de uma guerra de 20 anos contra a prática. Quanto mais os monopolistas lutam, mais os compartilhadores de arquivos ganham. Difunda a pirataria.",
    url: "https://www.thepiratebay.org/",
    categories: [busca, torrent, peer_to_peer, p2p]
  },
  {
    name: "Catarse",
    description: "Se você precisa de dinheiro para iniciar um negócio, pra fazer caridade social, seja o que for, você pode contornar a tigela virtual para implorar por dinheiro. Mas não pode ser apenas com qualquer coisa velha. Você tem que convencer a multidão a abrir mão dos seus recursos. Mas essa pode ser uma barreira bem menor a ser ultrapassada do que prender a atenção de investidores de risco ou pedir um financiamento no seu banco que foi resgatado pelo governo.",
    url: "https://www.catarse.me",
    categories: [crowdfunding, financiamento, criatividade]
  },
  {
    name: "Kickante",
    description: "Se você precisa de dinheiro para iniciar um negócio, pra fazer caridade social, seja o que for, você pode contornar a tigela virtual para implorar por dinheiro. Mas não pode ser apenas com qualquer coisa velha. Você tem que convencer a multidão a abrir mão dos seus recursos. Mas essa pode ser uma barreira bem menor a ser ultrapassada do que prender a atenção de investidores de risco ou pedir um financiamento no seu banco que foi resgatado pelo governo.",
    url: "http://www.kickante.com.br",
    categories: [crowdfunding, financiamento, criatividade]
  },
  {
    name: "Juntos com vc",
    description: "Se você precisa de dinheiro para iniciar um negócio, pra fazer caridade social, seja o que for, você pode contornar a tigela virtual para implorar por dinheiro. Mas não pode ser apenas com qualquer coisa velha. Você tem que convencer a multidão a abrir mão dos seus recursos. Mas essa pode ser uma barreira bem menor a ser ultrapassada do que prender a atenção de investidores de risco ou pedir um financiamento no seu banco que foi resgatado pelo governo.",
    url: "http://juntos.com.vc",
    categories: [crowdfunding, financiamento, criatividade]
  },
  {
    name: "Vaquinha Social",
    description: "Se você precisa de dinheiro para iniciar um negócio, pra fazer caridade social, seja o que for, você pode contornar a tigela virtual para implorar por dinheiro. Mas não pode ser apenas com qualquer coisa velha. Você tem que convencer a multidão a abrir mão dos seus recursos. Mas essa pode ser uma barreira bem menor a ser ultrapassada do que prender a atenção de investidores de risco ou pedir um financiamento no seu banco que foi resgatado pelo governo.",
    url: "https://www.vaquinhasocial.com.br/",
    categories: [crowdfunding, financiamento, criatividade, social, caridade]
  },
  {
    name: "Padrim",
    description: "Se você precisa de dinheiro para iniciar um negócio, pra fazer caridade social, seja o que for, você pode contornar a tigela virtual para implorar por dinheiro. Mas não pode ser apenas com qualquer coisa velha. Você tem que convencer a multidão a abrir mão dos seus recursos. Mas essa pode ser uma barreira bem menor a ser ultrapassada do que prender a atenção de investidores de risco ou pedir um financiamento no seu banco que foi resgatado pelo governo.",
    url: "https://www.padrim.com.br/",
    categories: [crowdfunding, financiamento, criatividade]
  },
  {
    name: "Artemisia",
    description: "O estado de bem-estar social tende a tornar as pessoas suplicantes dependentes. A ajuda externa também. Mas empreendedores com causas sociais estão criando melhores formas de ajudar os pobres, desde micro finanças ao retorno das sociedades de ajuda mútua. O setor de empreendedorismo social está desfrutando um renascimento permitido pela tecnologia apesar do estado.",
    url: "https://artemisia.org.br/",
    categories: [financiamento, criatividade, empreendedorismo, social]
  }
])