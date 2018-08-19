/* Populate USER_PROFILE Table */
INSERT INTO USER_PROFILE (ID,TYPE)  
VALUES (1,'USER');


INSERT INTO USER_PROFILE (ID,TYPE) 
VALUES (2,'ADMIN');
 
INSERT INTO USER_PROFILE (ID,TYPE) 
VALUES (3,'DBA');
 
/* Populate one Admin User. We need only one user to demonstrate this example. You can add more as done in previous posts*/
INSERT INTO APP_USER(ID,sso_id, password, first_name, last_name, email,phoneNumber, state)
VALUES (1,'msrao','123456', 'Rao','Smith','msrao@xyz.com',1234567890,'Active');
 
/* Populate JOIN Table */
INSERT INTO APP_USER_USER_PROFILE (user_id, user_profile_id) 
  SELECT app_user.id, user_profile.id FROM app_user , user_profile 
  where app_user.email='msrao@xyz.com' and user_profile.type='ADMIN';
 
 commit; 