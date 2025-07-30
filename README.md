![Banner](/.github/assets/banner.png)

<p align="center">

![Badge](https://img.shields.io/badge/Software-BDS-%23ffaa00?style=for-the-badge)
![Badge](https://img.shields.io/badge/Tests-PASS-%2355ff55?style=for-the-badge)
![Badge](https://img.shields.io/badge/Using-Docker-%23ff55ff?style=for-the-badge)
![Badge](https://img.shields.io/badge/MC%20Versions-1.16.x%5E-%235555ff?style=for-the-badge)

</p>

Docker Vanilla is a repository, that makes process of configuring new [Bedrock Dedicated Server](https://www.minecraft.net/en-us/download/server/bedrock) much faster for developers. It's mainly scoped for macOS users, who are forced to use [Docker](https://www.docker.com/) to run localhost on their machine, but it supports also Windows version.

To improve DX, container is using volumes, to move updated files on your disk to your container. By this, you can save a lot of time! 🚀

# 🤔 How to install? (macOS/Windows)

1. Clone the repository using command:
    ```git
    git clone https://github.com/m0lc14kk/docker-vanilla new-server
    ```
2. If you'll use Windows: replace `docker-compose.yaml` file in root directory with `windows/docker-compose.yaml`. It'll change platform of Docker container.
3. Run `scripts/clone.sh` script in your terminal. It'll remove development files and create `minecraft/ directory, which will contain server files in future.
4. Download latest version of [Bedrock Dedicated Server](https://www.minecraft.net/en-us/download/server/bedrock) on your disk.
5. Unpack server's files in `minecraft/` directory.
6. Install [Docker](https://www.docker.com/) if you don't have it on your PC.
7. Open **Docker Desktop** application. Make sure that you're logged in correctly.
8. Open terminal in root directory of server (`new-server`) and paste in these commands:

    ```sh
    # Build a Docker container.
    docker compose build

    # Run a Docker container, which will run your Bedrock server instance.
    docker compose up
    ```

🎉 Congrats! If you have done everything right, you should be able to connect to your server in Minecraft on `localhost:19132`.
