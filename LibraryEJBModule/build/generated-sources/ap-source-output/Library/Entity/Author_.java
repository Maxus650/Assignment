package Library.Entity;

import Library.Entity.Book;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-10T15:34:17")
@StaticMetamodel(Author.class)
public class Author_ { 

    public static volatile SingularAttribute<Author, String> AuthorId;
    public static volatile SingularAttribute<Author, String> AuthorName;
    public static volatile ListAttribute<Author, Book> book;
    public static volatile SingularAttribute<Author, Long> id;

}