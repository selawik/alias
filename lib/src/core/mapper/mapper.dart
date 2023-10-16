abstract class Mapper<Entity, Dto> {
  Entity mapToEntity(Dto dto);

  Dto mapToDto(Entity entity);
}
