package guru.springframework.domain.mongoDB.collections;

import lombok.Getter;
import lombok.Setter;
import org.springframework.context.annotation.Profile;

/**
 * Created by jt on 6/13/17.
 */

@Profile({"mongoDB"})
@Getter
@Setter
public class Notes {


    private String id;
    private Recipe recipe;
    private String recipeNotes;

}
