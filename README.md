## Installation with docker
To install this project with docker:
- Build the container

```bash
    docker build -t eb-api .
```

- Run the container 
```bash 
    docker run eb-api
```

- To execute the test


## Execution without docker
- Execute the command

```bash
    ruby main.rb
```

- To execute the test run

```bash
    rspec spec/api_call_spec.rb
```