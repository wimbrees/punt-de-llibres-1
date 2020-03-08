package cat.xtec.ioc.puntdellibres.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Table(name = "users")
@Data
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  @Column(name = "username")
  @NotBlank
  @Size(min = 3, max = 100)
  private String username;

  @Column(name = "password")
  @NotBlank
  @Size(min = 3, max = 100)
  @JsonIgnore
  private String password = "prova";
}