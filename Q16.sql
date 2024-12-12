# SHAIK MOHAMMED IKRAM
ALTER TABLE netflix
ADD COLUMN new_rating INT DEFAULT NULL;

DELIMITER $$

CREATE PROCEDURE AddNewRating(
    IN p_show_id VARCHAR(20), 
    IN p_new_rating INT
)
BEGIN
    IF p_new_rating BETWEEN 1 AND 5 THEN
        UPDATE netflix
        SET new_rating = p_new_rating
        WHERE show_id = p_show_id;
        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No title found with the given show_id';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Rating must be between 1 and 5';
    END IF;
END $$

DELIMITER ;

CALL AddNewRating('s1', 4);

SELECT show_id, title, new_rating FROM netflix WHERE show_id = 's1';






