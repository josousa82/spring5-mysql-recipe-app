package guru.springframework.domain.mongoDB.collections;

import lombok.Getter;
import org.springframework.context.annotation.Profile;

/**
 * Created by jt on 6/13/17.
 */
@Profile({"mongoDB"})
@Getter
public enum Difficulty {

    EASY, MODERATE, KIND_OF_HARD, HARD
}
