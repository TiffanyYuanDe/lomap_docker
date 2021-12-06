# Dockerfile for lomap
You can use this repo to create a docker image to run lomap. This repo is originally designed for pc/laptops with X86 architecture.

If you are using other architecture (e.g. M1 Mac) and encounter any problem, let me know.

If you are not familiar with docker, you can understand it as a simplified version of virtual machine (much smaller in size and much faster in speed)

## Docker Installation
There are two ways to use this repo, both need Docker installed. Installing Docker on Mac is super esay, plesae follow the official guide 
[here](https://docs.docker.com/desktop/mac/install/) to install Docker.

## How to Use This Dockerfile
### Command Line
The first option is to use Command Line.
1. start Docker if not already done so. 
2. clone this repository and go to the cloned folder.
3. build the docker image.
4. run the docker container from the image.

An example of commands is as follows:
```shell
% cd ~/Desktop
% git clone https://github.com/TiffanyYuanDe/lomap_docker.git
% cd ~/Desktop/lomap_docker
% docker build -t lomap .
% docker run -it --rm -v $(pwd):/[any_name] -w /[any_name] lomap /bin/bash

% # do your staff

% exit
```

The fourth command, `docker build`: don't forget the `.` dot. This command might takes minutes to run.

The last command, `docker run`, will create a "variation" of a "virtual machine" where you can run lomap. The current directory on your host machine (in this case, `~/Desktop/lomap_docker`) will be mapped to `/[any_name]` in the "virtual machine". You can replace `[any_name]` with any valid folder name you like. 

Also note that, modifications to the current folder `~/Desktop/lomap_docker` is NO more allowed via your host machine. i.e. if you want to write to a file in `~/Desktop/lomap_docker`, you have to do so inside the "virtual machine". 

Also note that, inside the "virtual machine", modification made outside `/[any_name]` will not be saved once you exit.

If you are not familiar with docker, you can first play around to see how file read, file write and file creation work for docker.

You only need to run `docker build` once. i.e. starting from the second run, you only need to use the `docker run` command.

### VS Code.
It's easier to run Dockerfile using VS Code with Remote-Container plugin.

1. Install VS Code
2. Install Remote-Container plugin inside vscode
3. Clone this repository.
4. Create a new folder to serve as the workspace of your project.
5. Copy `.dockerignore`, `Dockerfile`, `install.sh` from the repository to the new folder created.
6. Open the new folder using vscode, follow the link [here](https://code.visualstudio.com/docs/remote/containers#_quick-start-open-an-existing-folder-in-a-container).
7. You can ask vscode to create a terminal to access the virtual machine.

Any modifications made inside the "virtual" machine will be saved. Those file - read, write and create issues will mostly handled by vs code.

