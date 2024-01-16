# Presentation

This is a template for a Node.js Express API with Prisma ORM and Postgres database.
Configured to run in a Docker container.

# Express API Template

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
