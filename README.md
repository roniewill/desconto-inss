
<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/roniewill/desconto-inss?style=flat-square&logo=appveyor">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/roniewill/desconto-inss?style=flat-square&logo=appveyor">
  
  <a href="https://github.com/roniewill/desconto-inss/commits/main">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/roniewill/desconto-inss?style=flat-square&logo=appveyor">
  </a>
    
  <img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen?style=flat-square&logo=appveyor">
  
  <a href="https://github.com/roniewill/desconto-inss">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/roniewill/desconto-inss?style=flat-square&logo=appveyor">
  </a>

  <a href="https://www.linkedin.com/in/ramonwilliam/">
    <img alt="Made by Ramon William" src="https://img.shields.io/badge/Made%20by-Ramon%20William-blue?style=flat-square&logo=appveyor">
  </a>
</p>


<h1 align="center"> Desconto INSS </h1>

<p align="center">
 <a href="#-about">About</a> •
 <a href="#-features">Features</a> •
 <a href="#-layout">Layout</a> • 
 <a href="#-how-it-works">How it works</a> • 
 <a href="#-tech-stack">Tech Stack</a> • 
 <a href="#contributors">Contributors</a> •
</p>


## 💻 About

INSS Discount - It is a very simple employee management system with the purpose of providing a friendly environment for users to carry out the procedures most used at cmpany: Transfer, CRUD, LIST, Manager users and Report.

---


## ⚙️ Features

- [x] User can register using: 
  - Full name 
  - Email 
  - Password 

- [x] User can login using: 
  - Email 
  - Password 
  
- [x] Users have access to the following features: 
  - add one or more employees
  - exclude one or more employees if your're an admin
  - cand see and edit employee info
  - you can see a chart showing some reports filtered by salaries range
  - The main feature is add a salary and get the INSS rate the automatic way

---


## 🎨 Layout

<p align="center">Coming soon</p>

### Web

<p align="center">Coming soon</p>

---


## 🚀 How it works https://docs.docker.com/compose/

### Pre-requisites

Before starting, you will need to have the following tools installed and properly configured on your machine:
[Git](https://git-scm.com), [Ruby 3.2.2](https://www.ruby-lang.org/), [Rails 7.0.8](https://rubyonrails.org/), [Node.js](https://nodejs.org/en/), [Yarn](https://yarnpkg.com/),[PostgreSQL](https://www.postgresql.org/), [Docker](https://docs.docker.com/desktop/) and [docker-compose](https://docs.docker.com/compose/). 
Also it's nice to have an editor to work with code like [VSCode](https://code.visualstudio.com/)

#### RUN

```bash
# Once Ruby and Rails are properly installed, follow the next steps:
# Install bundler
$ gem install bundler

# Clone this repository
$ git clone https://github.com/roniewill/desconto-inss

# Access the project folder cmd/terminal
$ cd desconto-inss

# open the project with a code editor of your choice
$ code .

# then run the commands on your terminal
$ bundle install
$ bin/setup
$ rake db:seeds
$ bin/dev 
# or: rails s
# The server will start by default at port: 3000 - go to http://localhost:3000

```

---


## 🛠 Tech Stack

### The following tools were used in the construction of the project:

#### **Main Tools**

-   **[Ruby 3.2.2](https://www.ruby-lang.org/en/downloads/)**
-   **[Rails 7.0.8](https://github.com/rails/rails/tree/7-0-stable)**
-   **[PostgreSQL](https://www.postgresql.org/)**
-   **[Node LTS](https://nodejs.org/en/)**
-   **[Yarn](https://yarnpkg.com/)**
-   **[Bootstrap 5](https://getbootstrap.com/docs/5.0/getting-started/download/)**


#### **Utilities**

-   Tests:  **[RSPec](https://rspec.info/)**
-   Static code analyzer and code formatter:  **[RuboCop](https://github.com/rubocop/rubocop)**
-   Manager User authentication:  **[Devise](https://github.com/heartcombo/devise)**
-   Pagination: **[Kaminari](https://github.com/kaminari/kaminari)**
-   Factory bot: **[factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)**
-   Faker: **[Faker](https://github.com/faker-ruby/faker)**
-   Chartkick: **[chartkick](https://github.com/ankane/chartkick)**

#### **Plugins**

- **[Inputmask](https://github.com/RobinHerbots/Inputmask)**
- **[Bootstrap 5 Kaminari Views](https://github.com/felipecalvo/bootstrap5-kaminari-views)**
- **[autoNumeric](https://github.com/autoNumeric/autoNumeric/)**
- **[ChartJs](https://github.com/chartjs/Chart.js)**

---


## Contributors

<p align="center">Coming soon :)</p>

## How to contribute

1. Fork the project.
2. Create a new branch with your changes: `git checkout -b my-feature`
3. Save your changes and create a commit message telling you what you did: `git commit -m" feature: My new feature "`
4. Submit your changes: `git push origin my-feature`

---


## Contact

Made with a lot of love and dedication by Ramon William 👋🏽 [Get in Touch!](Https://www.linkedin.com/in/ramonwilliam/)
