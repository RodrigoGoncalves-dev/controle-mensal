enum ServiceTypeEnum {
  cabeleireira(0),
  barbeiro(1),
  facial(2),
  corporal(3),
  depilacao(4),
  pedicure(5),
  manicure(6),
  maquiagem(7),
  massagista(8);

  final int codService;

  const ServiceTypeEnum(this.codService);
}
