# ContactMe API
### A Contacts Management Web Application
ContactMe safely stores all of your contacts. The handy search feature will help you find any contact you have stored in seconds.

## Links

### API URL
[Heroku Deployment](https://contact-me-rails.herokuapp.com/examples)

### Client URL
[Deployment](https://pedrotavarez.com/contact-me/)

[Github Repo](https://github.com/ptavarez16/contact-me)

## Development Process
It's been about a month since I messed with Ember, so as a refresher I decided to build a quick project.

I followed a pretty good schedule. Staying organzided, I was able to meet MVP within a day or two. I started off building the API in Rails, then moved on to the client.

Surprisingly this time around was much easier than my first ember project. Still, this will most likely be my last project in Ember. When it comes to working with Rails... I feel like it just gets better and better. Such a beautiful tool.

### Install Dependencies

In your terminal: ```bundle install```

## API End Points

### Authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`        | `users#signout`   |

### Users
| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/:id`  | `users#show`      |
| PATCH| `/users/:id`  | `users#update`    |

### Examples
| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/examples`    | `examples#index`|
| GET  | `/examples/:id`  | `examples#show` |
| PATCH | `/examples/:id`  | `examples#update`|
| DELETE |`/examples/:id`| `examples#destroy` |

### Contacts
| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/contacts`    | `contacts#index`|
| GET  | `/contacts/:id`  | `contacts#show` |
| PATCH | `/contacts/:id`  | `contacts#update`|
| DELETE |`/contacts/:id`| `contacts#destroy` |

## API Guides
[Users Guide](docs/user.md)
[Examples Guide](docs/example.md)
[Contacts Guide](docs/contact.md)

## Entity Relationship Diagram (ERD)
![ERD](https://i.imgur.com/quY3oZf.jpg)

## Technologies Used
- Ruby
  - A dynamic, open source programming language with a focus on simplicity and productivity.
  - This was how I wrote bascially every function I needed to make the backend run.
- Ruby on Rails
  - Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.
- SQL
    - SQL is a standard language for storing, manipulating and retrieving data in databases.
    - Luckily I did not have to do much with SQL since Rails took care of that for me.
- Heroku
  - Heroku is a cloud platform as a service (PaaS) supporting several programming languages that is used as a web application deployment model.
  - The best part is that it's free!

## Disclaimer
This API may be reset or altered at anytime. The future of this API may not align with the current state and therefore the state your client application expects. If you would like to maintain a version of this API in its current state for your future use, please fork and clone the repository and launch it on heroku.
