# Organizing Assignments Shell Script

## What
The command organizes files by reading the file content and extracting the first date in MM-DD-YYYY format. Then it moves the files into directories based on the dates into the Assignments folder.

## Why? When?
It helps to automate the process of sorting files by date.\
It will help users locate assignments based on the date.\
Ex: Teacher needs to sort students assignments by due date.

## How to use the command
Save the script as 'organize_date.sh'\
Then do 'chmod 777 organize_date.sh'\
Now you can use the command by __'bash organize_date.sh /path/to/files [extension] [default:txt]'__

## Example:
nathan_duong@instance-20250124-012855:~/cs131/a2$ bash organize_date.sh test_assignments\
Moved test_assignments/assignment_01-17-2003.txt to Assignments/01-17-2003/\
Moved test_assignments/assignment_05-22-2015.txt to Assignments/05-22-2015/\
Moved test_assignments/assignment_07-09-2018.txt to Assignments/07-09-2018/\
Moved test_assignments/assignment_12-25-2020.txt to Assignments/12-25-2020/\
No valid date found in: test_assignments/assignment_no_date.txt\
4 files moved. Done

nathan_duong@instance-20250124-012855:~/cs131/a2$ bash organize_date.sh test_assignments/\
No valid date found in: test_assignments//assignment_no_date.txt\
No files were moved

nathan_duong@instance-20250124-012855:~/cs131/a2$ bash organize_date.sh test_assignments_csv csv\
Moved test_assignments_csv/assignment_01-17-2003.csv to Assignments/01-17-2003/\
Moved test_assignments_csv/assignment_05-22-2015.csv to Assignments/05-22-2015/\
Moved test_assignments_csv/assignment_07-09-2018.csv to Assignments/07-09-2018/\
Moved test_assignments_csv/assignment_12-25-2020.csv to Assignments/12-25-2020/\
No valid date found in: test_assignments_csv/assignment_no_date.csv\
4 files moved. Done
