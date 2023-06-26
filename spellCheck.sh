read -p "Enter the folder path: " folder

# Check if the folder exists
if [ ! -d "$folder" ]; then
  echo "Folder not found."
  exit 1
fi

# Iterate over files in the folder
for file in "$folder"/*; do
  # Check if the file is a regular file
  if [ -f "$file" ]; then
    echo "Checking spelling for file: $file"
    aspell --check "$file"
    echo ""
  fi
done
