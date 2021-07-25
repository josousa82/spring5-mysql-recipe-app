package guru.springframework.domain.mysql.entities;

import org.springframework.context.annotation.Profile;

/**
 * Created by jt on 6/13/17.
 */
@Profile({"dev", "local", "prod"})
public enum Difficulty {

    EASY, MODERATE, KIND_OF_HARD, HARD
}
