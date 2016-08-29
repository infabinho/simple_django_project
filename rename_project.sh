#This script is to rename your project
#Just type the new project name and it does the job for you

OLD_NAME='simple_django'

echo -n "The new project's name: "
read NEW_NAME

echo ""
echo "Moving the project dir $OLD_NAME to $NEW_NAME"
mv $OLD_NAME $NEW_NAME

echo "Changing every entry of $OLD_NAME inside the project"
grep --exclude-dir=".*" -rl "$OLD_NAME" | xargs sed -i "s/$OLD_NAME/$NEW_NAME/g"
echo ""
