# Player-Hero Many-to-Many Relationship Example

This repository is a Ruby on Rails application demonstrating the creation of a many-to-many relationship between `Player` and `Hero` models. Example data is generated using the Faker gem.

## Features

- **Faker Gem**: Used to generate fake data for development and testing purposes.
- **Many-to-Many Relationship**: Demonstrates the use of a join table to associate `Player` and `Hero` models.

## Getting Started

### Prerequisites

- Ruby 3.2.2
- Rails 7.2.1
- SQLite3 (for the database)

### Installation

1. **Clone the repository**

    ```sh
    git clone https://github.com/yourusername/your-repository-name.git
    cd your-repository-name
    ```

2. **Install dependencies**

    ```sh
    bundle install
    ```

3. **Setup the database**

    ```sh
    rails db:create
    rails db:migrate
    ```

4. **Seed the database with fake data**

    The Faker gem is used to generate example data. You can create seed data by running:

    ```sh
    rails db:seed
    ```

    Or you can use:

    ```sh
    rails db:setup
    ```

### Usage

- **Start the Rails server**

    ```sh
    rails server
    ```

    Or:

    ```sh
    rails s
    ```

- **Open your browser** and navigate to `http://localhost:3000` to view the application.

- **Access the Player and Hero management interfaces**

    - **Players**
      - List all players: `http://localhost:3000/players`
      - Create a new player: `http://localhost:3000/players/new`
      - Edit a player: `http://localhost:3000/players/:id/edit`
      - Show a player: `http://localhost:3000/players/:id`
      - Delete a player: Available on the index and show views

    - **Heros**
      - List all heroes: `http://localhost:3000/heros`
      - Create a new hero: `http://localhost:3000/heros/new`
      - Edit a hero: `http://localhost:3000/heros/:id/edit`
      - Show a hero: `http://localhost:3000/heros/:id`
      - Delete a hero: Available on the index and show views

    - **Manage Hero Associations**
      - Add a hero to a player: Available on the player details page
      - Remove a hero from a player: Available on the player details page

### Ruby and Rails Versions

- Ruby: 3.2.2
- Rails: 7.2.1
