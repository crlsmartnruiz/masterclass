docker rm -f express-app

docker build -t express-app .

docker run -p 3000:3000 -e EXAMPLE_ENV_VAR=example-value -d --name express-app --rm express-app

docker run -p 3000:3000 -e EXAMPLE_ENV_VAR=example-value -d --name express-app --rm --network js-network express-app

docker run -p 3000:3000 -e EXAMPLE_ENV_VAR=example-value -d --name express-app --rm --volume $PWD:/app/src express-app