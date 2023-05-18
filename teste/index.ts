class Teste {
  id: number
  hello: string
  world: string
}

const res = (id: number): Teste => {
  const message = {} as Teste

  message.id = id
  message.hello = "Hello"
  message.world = "World"

  return message
}

const teste = res(10)

teste.idsa
