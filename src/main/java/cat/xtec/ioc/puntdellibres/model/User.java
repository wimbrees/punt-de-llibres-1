package cat.xtec.ioc.puntdellibres.model;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Data;

@Entity
@Table(name = "users")
@Data
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @Column(name = "username", unique = true)
  @NotNull
  @Size(min = 3, max = 50)
  private String username;

  @Column(name = "email", unique = true)
  @NotNull
  @Size(min = 3, max = 50)
  private String email;

  @Column(name = "password")
  @NotNull
  @Size(min = 3, max = 100)
  @JsonIgnore
  private String password = "prova";

  @Column(name = "name")
  @NotNull
  @Size(min = 3, max = 50)
  private String name;

  @Column(name = "last_name")
  @NotNull
  @Size(min = 3, max = 50)
  private String lastName;

  @Column(name = "location")
  @NotNull
  @Size(min = 3, max = 100)
  private String location;

  @Column(name = "profile")
  @Size(min = 3, max = 500)
  private String profile;

  @Column(name = "rating")
  private float rating;

  @ManyToMany
  @JoinTable(
    name = "user_likes_author",
    joinColumns = @JoinColumn(name = "user_id"),
    inverseJoinColumns = @JoinColumn(name = "author_id"))
  private Set<Author> authorsLiked;

  @ManyToMany
  @JoinTable(
    name = "user_likes_genre",
    joinColumns = @JoinColumn(name = "user_id"),
    inverseJoinColumns = @JoinColumn(name = "genre_id"))
  private Set<Genre> genresLiked;

  @ManyToMany
  @JoinTable(
    name = "user_likes_language",
    joinColumns = @JoinColumn(name = "user_id"),
    inverseJoinColumns = @JoinColumn(name = "language_id"))
  private Set<Language> languagesLiked;

  @CreationTimestamp
  private LocalDateTime createdDate;
}