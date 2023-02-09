abstract class Mapper<Model, Dto> {
  Model mapToModel(Dto type);

  Dto mapFromModel(Model type);
}