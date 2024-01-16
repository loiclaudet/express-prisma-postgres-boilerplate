# Express Prisma Postgres boilerplate

<p>
  <img src="https://github.com/loiclaudet/express-prisma-postgres-boilerplate/assets/8344874/2dbe3c5d-3f3a-4782-b672-2ef8641f71d4" width="100" style="max-width:100%; height:auto;">
  <img src="https://github.com/loiclaudet/express-prisma-postgres-boilerplate/assets/8344874/33cf63f7-849e-43f2-a2cc-6974d5b36f7c" width="90" style="max-width:100%; height:auto;">
  <img src="https://github.com/loiclaudet/express-prisma-postgres-boilerplate/assets/8344874/0e569c1f-902a-443c-b4b2-79ec0659036f" width="40" style="max-width:100%; height:auto;">
</p>

This is a template for a Node.js Express API with Prisma ORM and Postgres database.

Configured to run in a Docker container.


## Launching the project locally

To start the application locally with Docker Compose, ensure you have [Docker Engine](https://docs.docker.com/engine/install/) installed on your system.

Then, follow these steps:

### Setup environment variables

Create a `.env` file in the root directory of the project by copying the `.env.example` file.

```bash
cp .env.example .env
```

### Install dependencies

```bash
npx pnpm@8 install --frozen-lockfile
```

### Generating prisma client

```bash
npm run prisma:generate
```

### Build the container and run the application

```bash
npm run docker:up
```

This command pull docker images, build them and starts the postgres and express services, as defined in the docker compose files.

### Running migrations

Setup the database by running the migrations

```bash
npm run prisma:migrate
```

### Accessing the application

Once the containers are running, you can access the application at [http://localhost:2187](http://localhost:2187).

---

## Other useful Commands

### Interacting with the database

```bash
npm run prisma:studio
```

### Watching for changes in prisma schema while developing

```bash
npm run prisma:watch
```

### Stopping the application

```bash
npm run docker:down
```
