find /project_dir -name "*.c" -o -name "*.cpp" -o -name "*.java" -o -name "*.h" > cscope.files
cscope -Rbq cscope.files
