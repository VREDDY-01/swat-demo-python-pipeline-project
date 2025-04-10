#!/bin/bash
chmod +x Scripts/*.sh
./Scripts/instance_os_dependencies.sh
./Scripts/python_dependencies.sh
./Scripts/nginx.sh
./Scripts/gunicorn.sh
./Scripts/start_app.sh
