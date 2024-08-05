
BEGIN TRANSACTION;

DROP TABLE IF EXISTS user_shift, users, shift, hours CASCADE;

CREATE TABLE users (
	user_id serial NOT NULL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	role varchar(50) NOT NULL,
	active boolean,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE shift (
	shift_id serial NOT NULL,
	requester int NOT NULL,
	start_date_time TIMESTAMP NOT NULL,
	duration int NOT NULL,
    status int NOT NULL,
    emergency boolean NOT NULL,
    coverer int,
	CONSTRAINT PK_shift PRIMARY KEY (shift_id),
	CONSTRAINT FK_shift_requester FOREIGN KEY (requester) REFERENCES user (user_id) ON DELETE CASCADE
);

CREATE TABLE hours(
	hours_id serial NOT NULL,
    employee int NOT NULL,
	start_of_week DATE NOT NULL,
    year int NOT NULL,
    hours_worked int NOT NULL,
	CONSTRAINT PK_hours PRIMARY KEY (hours_id),
    CONSTRAINT FK_hours_employee FOREIGN KEY (employee) REFERENCES user (user_id) ON DELETE CASCADE
);

CREATE TABLE user_shift (
	shift_id int NOT NULL,
	coverer_id int NOT NULL,
	CONSTRAINT PK_user_shift PRIMARY KEY (shift_id, coverer_id),
	CONSTRAINT FK_coverer_id FOREIGN KEY (coverer_id) REFERENCES user (user_id) ON DELETE CASCADE,
	CONSTRAINT FK_shift_id FOREIGN KEY (shift_id) REFERENCES shift (shift_id) ON DELETE CASCADE
);

COMMIT;
