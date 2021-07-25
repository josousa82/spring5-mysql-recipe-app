package guru.springframework.domain.mongoDB.collections;

import lombok.Getter;
import lombok.Setter;
import org.springframework.context.annotation.Profile;

import java.util.Set;

/**
 * Created by jt on 6/13/17.
 */
@Profile({"mongoDB"})
@Getter
@Setter
public class Category {
    private String id;
    private String description;
    private Set<Recipe> recipes;

}
