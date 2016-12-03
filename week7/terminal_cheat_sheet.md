### Command Line

Create files

```bash
# Format
touch <FILENAME>

# Examples
touch my_file.txt
touch my_program.rb
touch students.yml
```

Download files

```bash
# Format
curl <URL> <FLAG> <PARAMETER> <FLAG> <PARAMETER>

# Examples

# prints all information received to terminal
curl www.textfiles.com/etext/FICTION/mobydick

# saves output into filename you provided
curl www.textfiles.com/etext/FICTION/mobydick -o mobydick.txt
```

Read files

```bash
# format
more <FILENAME>

# example
more mobydick.txt
```

Check current folder/directory

```bash
# returns which folder you are in
pwd
```

See files and directories in current directory

```bash
#format
ls <FLAG> <FLAG> ...etc

# returns a list of things inside current directory
ls

# returns a list of things inside current directory, including hidden files
ls -a
```

Create directories (folders)

```bash
# format
mkdir <FOLDER NAME>

# examples
mkdir my_folder
```

Moving files

```bash
# format
mv <FILENAME> <FOLDER NAME>

# examples
# assuming your current directory has books.txt and favorites/ folder
mv books.txt favorites
```

Deleting files

```bash
# format
rm <FILENAME>

# examples
rm books.txt
```

Moving around

```bash
# format
cd <PATH>

# examples
# move to base of your machine
cd ~

# move to your Desktop folder
cd ~/Desktop

# move up a level/folder/directory
cd ..
cd ../

# move to the favorites directory, if it exists in your current directory
cd favorites
cd favorites/
```

Additional Resources
- [Command Line Cheat Sheet](https://github.com/0nn0/terminal-mac-cheatsheet)
