# docker-compose-laravel
A simple environmet ready for Laravel development.

# How To Use It

- **1** Clone it.
- **2** Run `docker-compose up -d` on terminal.
- **3** Enjoy.

# Running Ports

- **nginx** - `:80`
- **mysql** - `:3306` (latest)
- **php** - `:9000` (PHP 8.0.5)
- **redis** - `:6379`
- **mailhog** - `:8025` 

Three additional containers are included that handle Composer, NPM, and Artisan commands *without* having to have these platforms installed on your local computer. Use the following command examples from your project root, modifying them to fit your particular use case.

- `docker-compose run --rm composer update`
- `docker-compose run --rm npm run dev`
- `docker-compose run --rm artisan migrate` 

## Persistent MySQL Storage

```
volumes:
  - ./mysql:/var/lib/mysql
```

## MailHog

The current version of Laravel (8 as of today) uses MailHog as the default application for testing email sending and general SMTP work during local development. Using the provided Docker Hub image, getting an instance set up and ready is simple and straight-forward. The service is included in the `docker-compose.yml` file, and spins up alongside the webserver and database services.

To see the dashboard and view any emails coming through the system, visit [localhost:8025](http://localhost:8025) after running `docker-compose up -d`.

This enviroment has been based on Aschmelyun enviroment at https://github.com/aschmelyun/docker-compose-laravel.
