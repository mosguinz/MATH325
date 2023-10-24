
echo "## Notes" > README.md

for f in Notes/*.html; do
    echo "* [${f%%.*}](https://mosguinz.github.io/MATH325/$f)" >> "README.md"
done

echo "## Homework" >> README.md

for f in Homework/*.html; do
    echo "* [${f%%.*}](https://mosguinz.github.io/MATH325/$f)" >> "README.md"
done
