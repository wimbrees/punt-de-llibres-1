package cat.xtec.ioc.puntdellibres.repository;


import cat.xtec.ioc.puntdellibres.model.Book;

public interface BookRepositoryCustom {
  public Iterable<Book> findAllButMine(Integer userId);
}