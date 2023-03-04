When running... <br><br>
Here are the commands:
1) <code>docker build -t lab2 .</code>
2) <code>docker run --rm -t -d -v $(pwd)/input:/app/input -v $(pwd)/output:/app/output lab2</code>
3) <code>docker exec -it <id> python3 python_script.py</code>
