# Docker files for lomap

## How to use
1. install docker
2. git clone this repository
    ```shell
    git clone https://github.com/TiffanyYuanDe/lomap_docker.git
    ```
3. go to the cloned folder
    ```shell
    cd lomap_docker 
    ```
4. build the docker image:
    ```shell
    docker build -t lomap .
    ```
5. run the docker container from the image.
    ```shell
    docker run -it --rm -v $(pwd):/[any_name] -w /[any_name] lomap /bin/bash
    ```
    Replace [any_name] with any valid folder name.
lllllll
6. done
