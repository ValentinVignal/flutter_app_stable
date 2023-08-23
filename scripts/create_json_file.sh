rm "test/lang.json";
touch "test/lang.json";
echo "{" >> "test/lang.json";
for k in {0..100000}; do
   echo "  \"key_${k}\": \"value_${k} - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"," >> "test/lang.json";
done
echo "  \"key_end\": \"value_100000\"" >> "test/lang.json";

echo "}" >> "test/lang.json";
