# GO STARTER

Your amazing app description

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Go 1.22.4 or higher
- Git

### Installing

First, clone the repository to your local machine:

```sh
git clone https://github.com/amir-the-h/go-starter.git <your-project-name>
```

Navigate to the project directory:
```sh
cd <your-project-name>
```

Remove the existing git origin:
```sh
rm -rf .git
```

Initialize a new git repository:
```sh
git init
```

Add the new git origin:
```sh
git remote add origin <your-git-repo-url>
```

Initialize the go module:
```sh
make init MODULE_NAME=<your-module-name>
```

### Running the Application

To run the application in development mode:

```sh
make run
```

### Adding a Go Package

If you need to add a Go package on demand:

```sh
make addpkg PKG=<package-name>
```

Replace `<package-name>` with the actual package you wish to add. For example, `make addpkg PKG=github.com/example/package`.

### Building the Application

For ease of use in future operations, you can set the `APP_NAME` environment variable to your desired application name. This will be used in the build and deploy operations. If you do not set the `APP_NAME` environment variable, the default name `amazing_app` will be used and you have to specify the application name in the build and deploy commands.

To build the application and output the binary to the `./dist` directory:

```sh
make build APP_NAME=<your-app-name>
```

Replace `<your-app-name>` with the desired name for your application binary. If not specified, the default name `amazing_app` will be used.

### Deploying the Application

To deploy the built application to the /usr/local/bin directory:

```sh
make deploy APP_NAME=<your-app-name>
```

### Build and Deploy

To combine the build and deploy operations:

```sh
make build_and_deploy APP_NAME=<your-app-name>
```

