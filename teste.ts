




const MyComponent = () => {
  const travel: TravelDto = {} as TravelDto

  return travel.desc
}

export class TravelDto {
  title: string
  desc: string
  status: boolean
  start: Date | string | undefined
}

function teste(a: number, b: number) {
  return a + b
}

teste(1, 2)
