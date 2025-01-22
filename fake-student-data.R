# Set the seed for reproducibility (optional)
set.seed(123)

# Define number of records
n <- 50

# Generate stud_id: 5-digit numbers without replacement
stud_id <- sample(11110:99999, n, replace = FALSE)

# Generate quarter_gpa: sampled from 0.0 to 4.0 with replacement
quarter_gpa <- sample(seq(0.0, 4.0, by = 0.1), n, replace = TRUE)

# Generate overall_gpa: sampled from 0.0 to 4.0 with replacement
overall_gpa <- sample(seq(0.0, 4.0, by = 0.1), n, replace = TRUE)

# Define degree and career options
degree_list <- c(
  "Business Management – B.S.",
  "Accounting – B.S.",
  "Marketing – B.S.",
  "Human Resource Management – B.S.",
  "Healthcare Management – B.S.",
  "IT Management – B.S.",
  "Computer Science – B.S.",
  "Cybersecurity and Information Assurance – B.S.",
  "Data Management/Data Analytics – B.S.",
  "Network Engineering and Security – B.S.",
  "Software Engineering – B.S.",
  "Cloud Computing – B.S.",
  "Health Information Management – B.S.",
  "Nursing (Prelicensure) – B.S.",
  "Nursing (RN-to-BSN Online) – B.S.",
  "Elementary Education – B.A.",
  "Special Education and Elementary Education (Dual Licensure) – B.A.",
  "Mathematics Education (Middle Grades) – B.A.",
  "Science Education (Secondary Biological Science) – B.S.",
  "Science Education (Secondary Chemistry) – B.S.",
  "Science Education (Secondary Earth Science) – B.S.",
  "Science Education (Secondary Physics) – B.S.",
  "Mathematics Education (Secondary) – B.A.",
  "English Language Learning (PreK–12) – B.A.",
  "Educational Studies – B.A."
)

career_list <- c(
  "Business Manager",
  "Operations Manager",
  "Financial Analyst",
  "Marketing Manager",
  "Human Resources Specialist",
  "Healthcare Administrator",
  "IT Project Manager",
  "Software Developer",
  "Cybersecurity Analyst",
  "Data Analyst",
  "Database Administrator",
  "Network Administrator",
  "Software Engineer",
  "Cloud Solutions Architect",
  "Health Information Manager",
  "Registered Nurse",
  "Elementary School Teacher",
  "Special Education Teacher",
  "Middle School Math Teacher",
  "High School Science Teacher",
  "High School Chemistry Teacher",
  "Earth Science Teacher",
  "Physics Teacher",
  "High School Math Teacher",
  "ESL Teacher",
  "Education Consultant",
  "Corporate Trainer",
  "Education Policy Analyst"
)


# Randomly sample degree and career values
degree <- sample(degree_list, n, replace = TRUE)
career <- sample(career_list, n, replace = TRUE)

# Create a data frame
student_data <- data.frame(
  stud_id = stud_id,
  quarter_gpa = quarter_gpa,
  overall_gpa = overall_gpa,
  degree = degree,
  career = career
)

# Save the data to a CSV file
write.csv(student_data, "student_data.csv", row.names = FALSE)

# Print the first few rows of the dataset
head(student_data)
