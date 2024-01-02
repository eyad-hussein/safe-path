class UserRepository {
  Future<void> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
    Uri avatarUrl,
    int roleId,
  ) {
    return Future(() => null);
  }

  Future<void> login(
    String email,
    String password,
  ) {
    return Future(() => null);
  }
}
