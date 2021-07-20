# CREATE SCHEMA IF NOT EXISTS `recipe_app_dev` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
# USE `recipe_app_dev`;
#
# GRANT ALL PRIVILEGES ON recipe_app_dev.* to 'user'@'%' WITH GRANT OPTION;
#
# CREATE TABLE IF NOT EXISTS category
# (
#     id          BIGINT AUTO_INCREMENT PRIMARY KEY,
#     description VARCHAR(255) NULL
#     );
#
# CREATE TABLE IF NOT EXISTS notes
# (
#     id          BIGINT AUTO_INCREMENT PRIMARY KEY,
#     recipe_notes LONGTEXT NULL,
#     recipe_id    BIGINT   NULL
# );
#
# CREATE TABLE IF NOT EXISTS  recipe
# (
#     id          BIGINT AUTO_INCREMENT PRIMARY KEY,
#     cook_time   INT          NULL,
#     description VARCHAR(255) NULL,
#     difficulty  VARCHAR(255) NULL,
#     directions  LONGTEXT     NULL,
#     image       LONGBLOB     NULL,
#     prep_time   INT          NULL,
#     servings    INT          NULL,
#     source      VARCHAR(255) NULL,
#     url         VARCHAR(255) NULL,
#     notes_id    BIGINT       NULL,
#     CONSTRAINT FK37al6kcbdasgfnut9xokktie9
#     FOREIGN KEY (notes_id) REFERENCES notes (id)
#     );
#
# ALTER TABLE notes
#     add constraint FKdbfsiv21ocsbt63sd6fg0t3c8
#         foreign key (recipe_id) references recipe (id);
#
# CREATE TABLE IF NOT EXISTS recipe_category
# (
#     recipe_id   BIGINT NOT NULL,
#     category_id BIGINT NOT NULL,
#     PRIMARY KEY (recipe_id, category_id),
#     CONSTRAINT FKcqlqnvfyarhieewfeayk3v25v
#     FOREIGN KEY (recipe_id) REFERENCES recipe (id),
#     CONSTRAINT FKqsi87i8d4qqdehlv2eiwvpwb
#     FOREIGN KEY (category_id) REFERENCES category (id)
#     );
#
# CREATE TABLE IF NOT EXISTS unit_of_measure
# (
#     id BIGINT AUTO_INCREMENT PRIMARY KEY,
#     description VARCHAR(255) NULL
#     );
#
# CREATE TABLE IF NOT EXISTS ingredient
# (
#     id BIGINT AUTO_INCREMENT PRIMARY KEY,
#     amount      DECIMAL(19, 2) NULL,
#     description VARCHAR(255)   NULL,
#     recipe_id   BIGINT         NULL,
#     uom_id      BIGINT         NULL,
#     CONSTRAINT FK6iv5l89qmitedn5m2a71kta2t
#     FOREIGN KEy (uom_id) REFERENCES unit_of_measure (id),
#     CONSTRAINT FKj0s4ywmqqqw4h5iommigh5yja
#     FOREIGN KEY (recipe_id) REFERENCES recipe (id)
# );