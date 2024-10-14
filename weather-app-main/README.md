# Weather App

This is a simple weather forecast app that uses the OpenWeatherMap API to display current weather information for a specified city. Users can enter a city name to get the weather details, including temperature and weather conditions.

## Features
- Fetches and displays weather information (temperature and weather condition) for a user-specified city.
- Displays temperature in Celsius.
- Shows a description of the weather (e.g., cloudy, clear sky).

## Technologies Used
- **Node.js**: JavaScript runtime environment for server-side applications.
- **Express**: Web application framework.
- **EJS**: Templating engine.
- **OpenWeatherMap API**: Used for fetching weather data.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/weather-app.git
    cd weather-app
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

3. Get your OpenWeatherMap API key:
    - Sign up at [OpenWeatherMap](https://openweathermap.org/) and get your API key.

4. Set up your API key:
    - Create a `.env` file in the root directory of your project and add your API key like this:
    ```bash
    API_KEY=your_api_key_here
    ```

5. Start the server:
    ```bash
    npm start
    ```

6. Access the app in your browser:
    - Open your browser and go to [http://localhost:3000](http://localhost:3000) to see the app in action.

## Usage
On the homepage, you will see a field to input a city name. Enter the name of the city and click "Submit" to get the current weather information for that city.

Example:
It's 25 degrees Celsius in Tokyo, and the weather is clear sky.

## Environment Variables
- **API_KEY**: Your OpenWeatherMap API key should be stored in a `.env` file.

## File Structure
```bash
.
├── public
│   └── css
│       └── style.css      # Stylesheet
├── views
│   └── index.ejs          # EJS template file
├── .env                   # Environment variables file (API key stored here)
├── app.js                 # Main app logic
├── package.json           # Project dependencies and scripts
└── README.md              # Documentation

##　Important Notes
Ensure that your API key is not exposed. Add the .env file to .gitignore before pushing your code to a public repository to prevent accidental exposure of your API key.

credit: https://github.com/bmorelli25/simple-nodejs-weather-app
