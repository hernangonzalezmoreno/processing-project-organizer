# Processing Project Organizer

Allows working with directories for Processing code organization.

Using the Bash script `run.sh`, all project files are organized into an output folder named 'sketch'.

## Project Organization

The Processing code should be placed in the 'src' folder. Inside this folder, you can have as many directories and subdirectories as needed. Similarly, you can place all the files you require, whether inside the 'src' root folder or within the directories and subdirectories.

Attachments related to your project should go into the 'data' folder.

## How to Use

To run your project, you should execute the `run.sh` file. You need to pass an argument: the name of the starting file for your Processing project.

For example, in this case, it's 'mip5':

      ./run.sh mip5

After this, a 'sketch' folder will be created, containing all the code ready to be executed. Additionally, the execution will also be launched automatically.