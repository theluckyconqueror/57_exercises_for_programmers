# Get exercise number from command line options

exercise_number = ARGV[0]
new_branch = "ex_#{exercise_number}"
new_directory = "exercise_#{exercise_number}"

# Switch to master and pull down latest changes
puts "Switching to master"
system("git checkout master")

puts "Pulling down the latest changes"
system("git pull")

puts "Creating feature branch: #{new_branch}"
system("git checkout -b #{new_branch}")

puts "Creating new directory: #{new_directory}"
system("mkdir #{new_directory}")

puts "Copying README.md template to new directory"
system("cp template_README.md #{new_directory}/README.md")
