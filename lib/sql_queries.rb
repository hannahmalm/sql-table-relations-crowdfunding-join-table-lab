# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  #1. select the project title
  #2. Find the pledge amounts by title using sum - Sum, count, avg, all come before FROM
  #3. need to join these tables together 
  #4. projects.id = this is the projects PRIMARY KEY
  #5. pledges.project_id = the FOREIGN KEY on pledges that MATCHES the primary key of projects
  #6. GROUP BY the title of the project last
  "SELECT projects.title, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  #1. Select the user name
  #2. Select the user age
  #3. Get the sum of all pledge amounts
  #4. Join the tables together
  #5. users comes first and joins on the pledges
  #6. user primary key = pledges foreign key of user_id
  #7. Group by the users
  "SELECT users.name, users.age, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  #1. Select the project title
  #2. To find if the amount over goal, first find the differnce between the pledge amount and the funding goal
  #3. Give this sum amount an alias name called "amount left"
  #remember than SUM comes before the FROM 
  #4. join the pledges on the projects primary key = pledges foreign key
  #5. Group the titles of the projects 
  #6. Use HAVING LAST - this is a way to say the alias (amount_left) is greater than 0
  "SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) AS amount_left FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title HAVING amount_left >= 0;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  #select the user name
  #select the sum of the pledge amount - remember that the sum comes before from
  #join the tables - From table primary key = Join table foreign key
  #Group by user name
  #Order by the sum of the pledges amount
  "SELECT users.name, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name ORDER BY SUM(pledges.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  #Select the project category
  #Select the pledge amount
  #Join the tables on From table primary key = Join table foreign key
  #Where the category is music
  "SELECT projects.category, pledges.amount FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  #Select the category name
  #Select the SUm of the pledge amount - this come before the From
  #join the tables on From table primary key = Join table foreign key
  #Where statement- where the project cateogry = books
  #Group By statement goes last 
  "SELECT projects.category, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'books' GROUP BY projects.category;"
end
