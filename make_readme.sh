echo "# Linear algebra" > README.md
echo "> *Is it okay?*" >> README.md
echo ">" >> README.md
echo "> [https://github.com/mosguinz/MATH325](https://github.com/mosguinz/MATH325)" >> README.md

echo "\n## Notes" >> README.md

for f in Notes/*.html; do
    echo "* [${f%%.*}](https://mosguinz.github.io/MATH325/$f)" >> "README.md"
done

echo "\n## Homework" >> README.md

for f in Homework/*.html; do
    echo "* [${f%%.*}](https://mosguinz.github.io/MATH325/$f)" >> "README.md"
done

echo "\n\n![](https://docs.google.com/spreadsheets/d/e/2PACX-1vQnXm7tIeJA57vpCs-X0Fnfy45CX4QSecDjVmvW1yBSiXLkWm7fOLOMXN9DZ48heM2dc3Hxqxc0VuLo/pubchart?oid=770412282&format=image)" >> README.md
