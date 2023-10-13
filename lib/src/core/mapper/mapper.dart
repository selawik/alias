abstract class Mapper<Model, Dto> {
  Model mapToEntity(Dto type);

  Dto mapToDto(Model type);
}
