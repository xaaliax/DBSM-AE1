CREATE TABLE user (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    role VARCHAR(50),
    password VARCHAR(100),
    profile_pic VARCHAR(255),
    email VARCHAR(100) UNIQUE,
    fname VARCHAR(50),
    lname VARCHAR(50),
    phone VARCHAR(20),
    street VARCHAR(100),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100)
);
CREATE TABLE article (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    primary_title VARCHAR(255) UNIQUE,
    description TEXT,
    institution_affiliation VARCHAR(255),
    submission_date DATETIME,
    contents TEXT,
    author_email VARCHAR(100),
    FOREIGN KEY (author_email) REFERENCES user(email)
);
CREATE TABLE publishing_kit (
    publishing_id INT AUTO_INCREMENT PRIMARY KEY,
    article_id INT,
    proposal_submission VARCHAR(100),
    proposal_acceptance BOOLEAN,
    manuscript_submission VARCHAR(100),
    final_draft_corrected VARCHAR(100),
    release_date_time DATETIME,
    FOREIGN KEY (article_id) REFERENCES article(article_id)
);
CREATE TABLE title (
    title_id INT AUTO_INCREMENT PRIMARY KEY,
    secondary_title VARCHAR(255),
    article_id INT,
    FOREIGN KEY (article_id) REFERENCES article(article_id)
);

CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    reviewer_title VARCHAR(100),
    work_website VARCHAR(255),
    institution_affiliation VARCHAR(255),
    feedback_comments TEXT,
    ratings INT,
    article_id INT,
    reviewer_email VARCHAR(100),
    grammatical BOOLEAN,
    technical BOOLEAN,
    FOREIGN KEY (article_id) REFERENCES article(article_id),
    FOREIGN KEY (reviewer_email) REFERENCES user(email)
);
CREATE TABLE review_validation (
    validation_id INT AUTO_INCREMENT PRIMARY KEY,
    feedback_id INT,
    admin_email VARCHAR(100),
    date_time DATETIME,
    FOREIGN KEY (feedback_id) REFERENCES feedback(feedback_id),
    FOREIGN KEY (admin_email) REFERENCES user(email)
);
CREATE TABLE admin_position (
    granted_position_id INT AUTO_INCREMENT PRIMARY KEY,
    grantee_email VARCHAR(100),
    grantor_email VARCHAR(100),
    position_granted VARCHAR(255),
    date_time DATETIME,
    FOREIGN KEY (grantee_email) REFERENCES user(email)
);
CREATE TABLE sales (
    sales_id INT AUTO_INCREMENT PRIMARY KEY,
    author_email VARCHAR(255),
    article_id INT,
    sales INT,
    FOREIGN KEY (article_id) REFERENCES article(article_id),
    FOREIGN KEY (author_email) REFERENCES user(email)
);

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author", "otispassword", "otis.png", "otismorton@gmail.com", "Otis", "Morton", 061257019854, "Melbourne Road", "London", "N7 3FL", "United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author", "jaspassword",	"jason.png", "jasonconway@gmail.com", "Jason", "Conway", 061246841061,	"Picadilly Street",	"London",	"SE2 4QS",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author",	"maddypassword",	"madison.png",	"madisonmoon@gmail.com",	"Madison", "Moon", 061279899753, "Oxford Street",	"London",	"E3 5SL",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author",	"lindpassword",	"linda.png",	"lindacox@gmail.com",	"Linda",	"Cox", 061258669396,	"Regent Street",	"London",	"E4 3ZF",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author",	"fordpassword",	"for.png",	"fordlynch@gmail.com",	"Ford",	"Lynch", 061297428348,	"Waterloo Road",	"London",	"SE6 7QX",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author",	"magdapassword",	"magdalena.png",	"magdalenahayes@gmail.com",	"Magdalena", "Hayes", 061245153179,	"Blackhorse Road",	"London",	"NE6 5ST",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Author",	"blapassword",	"blake.png",	"blakebarnett@gmail.com",	"Blake", "Barnett", 061242529176,	"Baker Street",	"London",	"SW2 6TF",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Reviewer",	"lianpassword",	"lian.png",	"lianmcoherson@gmail.com",	"Lian", "McPherson", 074258244085,	"Abbey Road",	"London",	"E1 7HX",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Admin",	"emmalinepassword",	"emmaline.png",	"emmalinelover@gmail.com",	"Emmaline", "Love", 074299839192,	"Brick Lane",	"London",	"EC1A 2AL",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Reviewer",	"jeffreypassword",	"jeff.png",	"jeffreymueller@gmail.com",	"Jeffrey", "Mueller", 074289095535,	"Bond Street",	"London",	"WC2A 1SD",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Reviewer",	"imanipassword",	"imani.png",	"imanieverett@gmail.com",	"Imani", "Everett", 074275296849,	"Columbia Road",	"London",	"WC2A 1SZ",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Admin",	"camilopassword",	"camilo.png",	"camilophan@gmail.com",	"Camilo", "Phan", 074235588792,	"Jermyn Street",	"London",	"N11 3RN",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Reviewer",	"elsapassword",	"elsa.png",	"elsapowers@gmail.com",	"Elsa", "Powers", 074235107257,	"Knightsbridge",	"London",	"E1 7DS",	"United Kingdom");

INSERT INTO user (role, password, profile_pic, email, fname, lname, phone, street, city, postal_code, country)
VALUES ("Admin",	"seanpassword",	"sean.png",	"seanmiddleton@gmail.com",	"Sean", "Middleton", 074284833530,	"Carnaby Street",	"London",	"E1 7DW",	"United Kingdom");


INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("Evolution of Anime",	"A study on how Anime has gained it popularity around the world",	"NU London", "2019-02-19 13:30:20",	"evolution_anime_contents.pdf", "otismorton@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents,  author_email)
VALUES ("Weightlifting vs Team Sport",	"A comparative study, determining the benefits of the different disciplines",	"Kings College", "2017-07-31 15:30:22",	"weight_team_contents.pdf", "jasonconway@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("Virtual Reality and its impact on Gaming",	"A study on how VR has changed the gaming experience and ist new possibilities", 	"UCL",  "2020-11-02 12:33:50", "vr_contents.pdf", "madisonmoon@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents,  author_email)
VALUES ("Procrastination",	"A study determining the causes and consequences of procrastination and possible methods to prevent it.",	"NU London", "2023-05-04 19:50:55", "procrastination_contents.pdf", "lindacox@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("Gap between the younger and older generation",	"A study identifying the causes and fields that create a gap between the younger and older generation",	"UCL", "2018-08-22 13:50:45", "gap_gen_contents.pdf", "fordlynch@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("South Korea and Beauty",	"A analysis of South Korea's obsession with the beauty standard", "LSE",  "2022-04-15 15:52:45",	"SK_beauty_contents.pdf", "magdalenahayes@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("Fitness and Mental Health",	"A study which determines the correlation of physical and mental wellbeing",	"Kings College", "2021-12-11 14:12:56", "fitness_mental_contents.pdf", "blakebarnett@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("The World Cup",	"An analysis of the history of the World Cup",	"UCL", 	"2024-01-02 11:35:20",	"world_cup_contents.pdf", "madisonmoon@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("Seaside and Mountains",	"A handbook, which identifies the different activities to be enjoyed in both places",	"LSE", 	"2020-02-25 14:52:45",	"sea_mountains_contents.pdf", "magdalenahayes@gmail.com");

INSERT INTO article (primary_title, description, institution_affiliation, submission_date, contents, author_email)
VALUES ("Setting Sail",	"A guide, introducing, explaining and showing the life as a sailor and how to join this lifestyle.",	"Kings College",	"2018-09-11 14:20:32", "sail_contents.pdf",	"jasonconway@gmail.com");


INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (1,	"evolution_anime_proposal.pdf",	true,	"evolution_anime_manuscript.pdf",	"evolution_anime_final_draft.pdf",	"2019-08-19 14:45:23");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (2,	"weight_team_proposal.pdf",	true,	"weight_team_manuscript.pdf",	"weight_team_final_draft.pdf",	"2017-11-30 16:49:12");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (3,	"vr_gaming_proposal.pdf",	true,	"vr_gaming_manuscript.pdf",	"vr_gaming_final_draft.pdf", "2021-04-02 19:25:20");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (4,	"procrastination_proposal.pdf",	true,	"procrastination_manuscript.pdf", "procrastination_final_draft.pdf", "2023-11-04 20:34:20");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (5,	"gap_proposal.pdf",	true,	"gap_manuscript.pdf", "gap_final_draft.pdf", "2018-12-22 11:15:24");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (6, "sk_beauty_proposal.pdf", true, "sk_beauty_manuscript.pdf",	"sk_beauty_final_draft.pdf", "2022-10-15 13:50:35");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (7,	"fitness_mental_proposal.pdf",	true,	"fitness_mental_manuscript.pdf",	"fitness_mental_final_draft.pdf", "2022-05-11 16:36:10");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (8,  "world_cup_proposal.pdf",  true,   "world_cup_manuscript.pdf",    "world_cup_final_draft.pdf", "2023-05-14 13:36:10");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (9,  "seaside_mountains_proposal.pdf",  true,   " seaside_mountains_manuscript.pdf",    " seaside_mountains_final_draft.pdf", "2019-08-12 17:36:13");

INSERT INTO publishing_kit (article_id, proposal_submission, proposal_acceptance, manuscript_submission, final_draft_corrected, release_date_time)
VALUES (10,  "setting_sail_proposal.pdf",  true,   " setting_sail_manuscript.pdf",    " setting_sail_final_draft.pdf", "2017-10-02 12:45:23");



INSERT INTO title (secondary_title, article_id)
VALUES ("What lead to the global rise in its popularity", 1);

INSERT INTO title (secondary_title, article_id)
VALUES ("What is the better option and why?", 2);

INSERT INTO title (secondary_title, article_id)
VALUES ("How the introduction of VR has changed the world of gaming", 3);

INSERT INTO title (secondary_title, article_id)
VALUES ("The causes and methods to prevent procrastination", 4);

INSERT INTO title (secondary_title, article_id)
VALUES ("Is the gap because of the age and experiences?", 5);

INSERT INTO title (secondary_title, article_id)
VALUES ("Does the evolution of technology influence the 
relationship?", 5);

INSERT INTO title (secondary_title, article_id)
VALUES ("Why is beauty so important in South Korea?", 6);

INSERT INTO title (secondary_title, article_id)
VALUES ("Does beauty determine success", 6);

INSERT INTO title (secondary_title, article_id)
VALUES ("Is this applicable to other countries", 6);

INSERT INTO title (secondary_title, article_id)
VALUES ("How does physical wellbeing determine mental wellbeing", 7);

INSERT INTO title (secondary_title, article_id)
VALUES ("The history of the football phenomena", 8);

INSERT INTO title (secondary_title, article_id)
VALUES (" The activities to be done!", 9);

INSERT INTO title (secondary_title, article_id)
VALUES (" The life of a sailor and introduction to the sea world", 10);

INSERT INTO title (secondary_title, article_id)
VALUES ("The dangers and thrills on the Sea", 10);




INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical, technical)
VALUES ("Associate Professor",	"cohersion.com",	"NU London",	"Many good points were identified, but not enough proof has been demonstrated",	3,	3,	"lianmcoherson@gmail.com",	true,	false);

INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical, technical)
VALUES ("Assistant Professor",	"mueller.com",	"LSE",	"Very interesting study, well written and good points identified. Further links needed.",	4,	1,	"jeffreymueller@gmail.com",	true,	true);

INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical,	technical)
VALUES ("Professor",	"everetti.com",	"Kings College",	"Well structured, but arguments are weak and not sufficiently treated.",	2,	4,	"imanieverett@gmail.com",	false,	true);

INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical,	technical)
VALUES ("Doctor",	"powerUp.com",	"UCL",	"An interesting topic, yet the different types of sport have not been placed on similar grounds enough",	3,	2,	"elsapowers@gmail.com",	true, false);

INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical,	technical)
VALUES ("Assistant Professor",	"mueller.com",	"LSE",	"No base has been sufficiently identified and proven and the article is not well written",	1,	5,	"jeffreymueller@gmail.com",	true, false);

INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical,	technical)
VALUES ("Doctor",	"powerUp.com",	"UCL",	"A very fascinating report, well written and structured and points have been identified and defended",	5,	6,	"elsapowers@gmail.com",  true, true);

INSERT INTO feedback (reviewer_title,	work_website,	institution_affiliation,	feedback_comments,	ratings,	article_id,	reviewer_email,	grammatical,	technical)
VALUES ("Doctor",	"powerUp.com",	"UCL",	"A very good study with interesting points and well written",	4,	7, "elsapowers@gmail.com",  true, true);

INSERT INTO feedback (reviewer_title,   work_website,   institution_affiliation,    feedback_comments,  ratings,    article_id, reviewer_email, grammatical,    technical)
VALUES ("Professor",    "everetti.com", "Kings College",    "Interesting topic and well written. The research and implementation was very solid.", 3,  8,  "imanieverett@gmail.com",   true,  true);

INSERT INTO feedback (reviewer_title,   work_website,   institution_affiliation,    feedback_comments,  ratings,    article_id, reviewer_email, grammatical,    technical)
VALUES ("Doctor",   "powerUp.com",  "UCL",  "Very enthusiastic and clearly written. Intriguing and well formatted!", 4,  9,  "elsapowers@gmail.com", true, true);

INSERT INTO feedback (reviewer_title,   work_website,   institution_affiliation,    feedback_comments,  ratings,    article_id, reviewer_email, grammatical,    technical)
VALUES ("Assistant Professor",  "mueller.com",  "LSE",  "Interesting and broad topic, unfortunately failed to create solid foundation", 2,  10,  "jeffreymueller@gmail.com", true, true);


INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (2,	"emmalinelover@gmail.com", "2019-02-25 12:56:30");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (4,	"seanmiddleton@gmail.com", "2017-08-06 15:23:34");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (1,	"camilophan@gmail.com", "2020-12-10 17:32:54");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (3,	"camilophan@gmail.com", "2023-05-13 11:45:24");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (5,	"emmalinelover@gmail.com", "2018-09-01 19:15:44");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (6,	"seanmiddleton@gmail.com", "2022-04-19 20:45:14");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (7,	"emmalinelover@gmail.com", "2022-01-02 10:35:53");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (9,  "camilophan@gmail.com", "2023-05-13 18:45:24");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (8,  "emmalinelover@gmail.com", "2019-09-01 12:15:44");

INSERT INTO review_validation (feedback_id, admin_email, date_time)
VALUES (10,  "seanmiddleton@gmail.com", "2017-04-19 11:45:14");



INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("lianmcoherson@gmail.com",	"emmalinelover@gmail.com",	"Reviewer", "2019-12-07 15:25:38");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("madisonmoon@gmail.com",	"camilophan@gmail.com",	"Author", "2019-11-01 11:56:24");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("elsapowers@gmail.com",	"seanmiddleton@gmail.com",	"Reviewer", "2021-08-19 17:16:44");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("otismorton@gmail.com",	"camilophan@gmail.com",	"Author", "2016-02-25 13:54:34");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("jasonconway@gmail.com",	"emmalinelover@gmail.com",	"Author", "2016-11-07 13:24:48");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("lindacox@gmail.com",	"camilophan@gmail.com",	"Author", "2016-01-01 13:26:14");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("fordlynch@gmail.com",	"seanmiddleton@gmail.com",	"Authot", "2016-12-09 18:46:25");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("magdalenahayes@gmail.com",	"camilophan@gmail.com",	"Author", "2016-11-05 22:34:26");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("blakebarnett@gmail.com",	"emmalinelover@gmail.com",	"Author", "2016-12-07 21:15:48");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("imanieverett@gmail.com",	"camilophan@gmail.com",	"Reviewer", "2016-04-01 15:36:44");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("emmalinelover@gmail.com",	"seanmiddleton@gmail.com",	"Admin", "2015-08-19 12:06:14");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("jeffreymueller@gmail.com",	"camilophan@gmail.com",	"Reviewer", "2016-01-15 14:24:32");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("camilophan@gmail.com",	"emmalinelover@gmail.com",	"Admin", "2015-12-07 12:34:18");

INSERT INTO admin_position (grantee_email, grantor_email, position_granted, date_time)
VALUES ("seanmiddleton@gmail.com",	"camilophan@gmail.com",	"Author", "2015-01-01 12:36:44");


INSERT INTO sales (author_email, article_id, sales)
VALUES ("otismorton@gmail.com", 1, 587);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("jasonconway@gmail.com", 2, 768);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("madisonmoon@gmail.com", 3, 512);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("lindacox@gmail.com", 4, 870);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("fordlynch@gmail.com", 5, 634);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("magdalenahayes@gmail.com", 6, 898);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("blakebarnett@gmail.com", 7, 768);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("madisonmoon@gmail.com", 8, 872);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("magdalenahayes@gmail.com", 9, 649);

INSERT INTO sales (author_email, article_id, sales)
VALUES ("jasonconway@gmail.com", 10, 546);
