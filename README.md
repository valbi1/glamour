# HTML5 & CSS3 Practical: Glamour Makeup Salon

**Live Site URL:** [Link to your GitHub Pages site]

This project is a 4-page static website for a fictional makeup salon, built as a practical exercise to demonstrate modern HTML5 and CSS3 skills. The entire site is styled with a custom CSS design system, is fully responsive, and is containerized with Docker for easy deployment.

**Live Site URL:** [Add your live site URL here, e.g., from GitHub Pages]

**Published Docker Image:** [https://hub.docker.com/r/valeriebiloko/html5-css3-site](https://hub.docker.com/r/valeriebiloko/html5-css3-site)

## Screenshots

*Replace these with actual screenshots of your project!*

### Desktop View
![Desktop screenshot of the homepage](URL_to_your_desktop_screenshot.png)

### Mobile View
![Mobile screenshot of the homepage](URL_to_your_mobile_screenshot.png)

## How to Run This Project

There are a few ways to get this project running on your machine, from the easiest to the most involved.

### Option 1: Run the Pre-built Docker Image (Easiest Way)


3.  Open your web browser and go to **[http://localhost:8080](http://localhost:8080)**.

### Option 2: Build and Run from Source (If you want to change the code)

Use this method if you have cloned the project files and want to build the Docker image from scratch.

    ```
3.  Open your web browser and go to **http://localhost:8080**.

### Option 3: View Locally (No Server or Docker Needed)

Since this is a static HTML/CSS site, you can also view the files directly in your browser without a web server.

1.  Clone or download the project files to your computer.
2.  In your file explorer, find the `index.html` file.
3.  Right-click on it and choose "Open with" your favorite web browser (like Chrome, Firefox, or Edge).

## Development with VS Code

This project includes a VS Code launch configuration (`.vscode/launch.json`) to make it easier to view the site while it's running in Docker.

1.  Start the Docker container using **Option 1** or **Option 2** from the "How to Run" section.
2.  Keep the terminal with the running container open.
3.  In VS Code, open the "Run and Debug" panel (Ctrl+Shift+D).
4.  Select **"Launch Chrome against localhost"** from the dropdown and press the green play button (or F5).

This will launch a new Chrome window connected to the site being served by your Docker container.

## Key Features

*   **Semantic HTML5:** Uses modern tags like `<header>`, `<main>`, `<article>`, `<aside>`, `<details>`, `<meter>`, and `<progress>` for a meaningful and accessible document structure.
*   **Modern CSS3:** Styled with a custom design system using CSS variables, a dark mode theme (`prefers-color-scheme`), grid layout, and responsive design principles.
*   **Accessibility First:** Includes a skip link, proper `aria-` attributes, high-contrast colors, and a `prefers-reduced-motion` media query.
*   **Zero JavaScript:** All interactivity is achieved using native HTML elements.
*   **Containerized:** A simple and efficient `Dockerfile` using Nginx allows the site to be built and run anywhere Docker is installed.

## File Structure

The project is organized to keep content, styles, and assets separate.

```
.
├── .vscode/
│   └── launch.json       # VS Code debugger configuration
├── assets/
│   └── css/
│       └── styles.css    # Main stylesheet
├── about.html
├── extras.html
├── index.html
├── media.html
├── Dockerfile
└── README.md
```

## About the Design

### Color Palette
*   **Spacing Scale:** A spacing scale based on an **8px grid** (`--space-1` to `--space-5`) is used for all margins, padding, and gaps. This creates a consistent vertical and horizontal rhythm throughout the site, leading to a balanced and professional layout.

## Accessibility Notes

Accessibility was a primary consideration throughout the styling process.
*   **Color Contrast:** All text and background color combinations were checked to ensure they meet WCAG AA contrast ratio requirements (4.5:1 or higher).
*   **Focus States:** All interactive elements (`a`, `summary`, `button`) have a clear, high-contrast `:focus-visible` outline using the brand color, ensuring keyboard navigability.
*   **Skip Link:** The "Skip to content" link is hidden by default but becomes prominently visible on focus, as required.
*   **Reduced Motion:** A `prefers-reduced-motion` media query is implemented to disable all CSS transitions and animations for users who have this preference set.

## Deployment

### Publishing to Docker Hub

After building your image (Option 2), you can publish it to Docker Hub.

1.  **Log in to Docker Hub:**
    ```sh
    docker login
    ```
2.  **Push the image:** (Make sure you tagged it with your username)
    ```sh
    docker push your-username/html5-css3-site:lab2
    ```

### Publishing to GitHub Pages

This site can be published for free using GitHub Pages.

1.  Push all your project files (`.html`, `assets/`, etc.) to a GitHub repository.
2.  In your repository's settings, go to the "Pages" section.
3.  Choose the branch to deploy from (e.g., `main`) and select the `/root` folder.
4.  Save your changes. GitHub will build and deploy your site, providing you with a live URL.



**Published Docker Image:** [https://hub.docker.com/r/valeriebiloko/html5-css3-site](https://hub.docker.com/r/valeriebiloko/html5-css3-site)

## How to Run This Project

There are two ways to get this project running on your machine.

### Option 1: Run the Pre-built Docker Image (Easiest Way)

This command downloads the already-built image from Docker Hub and starts the website. You don't need to have the project files on your computer for this to work, just Docker.

1.  Open your terminal or command prompt.
2.  Run the following command:

```sh
docker run --rm -p 8080:80 valeriebiloko/html5-css3-site:lab2
```

3.  Open your web browser and go to **[http://localhost:8080](http://localhost:8080)**.

### Option 2: Build and Run it Yourself (If you want to change the code)

Use this method if you have cloned the project files and want to build the Docker image from scratch.

1.  **Build the image:**
    Open a terminal in the project's root folder and run:
    ```sh
    docker build -t your-username/html5-css3-site:lab2 . # Replace 'your-username' with your Docker username(ValerieBiloko)
    ```
2.  **Run the container:**
    Once it's built, run your new container:
    ```sh
    docker run --rm -p 8080:80 your-username/html5-css3-site:lab2
    ```
3.  Open your web browser and go to **[http://localhost:8080](http://localhost:8080)**.

## About the Design

### Color Palette
The color palette was chosen to evoke a sense of elegance, sophistication, and warmth, befitting a high-end salon. It is built around a primary brand color of **Dusty Rose** (`--brand`) and a warm off-white background (`--bg`). Text colors are a high-contrast dark charcoal (`--fg`) to ensure readability. The palette is fully themeable via CSS variables and includes a dark mode variant.

*   `--bg`: `#fdf9f7` (Warm Off-White)
*   `--fg`: `#413a38` (Dark Charcoal)
*   `--brand`: `#b98b82` (Dusty Rose)

### Typography
A classic serif/sans-serif pairing was used to create a clear visual hierarchy and a professional feel.
*   **Headings:** `Cormorant Garamond` (hosted on Google Fonts) provides an elegant, high-class look.
*   **Body:** `Poppins` (hosted on Google Fonts) is a clean, modern, and highly readable sans-serif font perfect for paragraph text.
*   **Type Scale:** A modular scale based on a "Major Third" (1.25) ratio was used for heading variables (`--h1`, `--h2`) to ensure harmonious and consistent sizing.

### Spacing
A spacing scale based on an **8px grid** (`--space-1` to `--space-5`) is used for all margins, padding, and gaps. This creates a consistent vertical and horizontal rhythm throughout the site, leading to a balanced and professional layout.

## Accessibility Notes
Accessibility was a primary consideration throughout the styling process.
*   **Color Contrast:** All text and background color combinations were checked to ensure they meet WCAG AA contrast ratio requirements (4.5:1 or higher).
*   **Focus States:** All interactive elements (`a`, `summary`, `button`) have a clear, high-contrast `:focus-visible` outline using the brand color, ensuring keyboard navigability.
*   **Skip Link:** The "Skip to content" link is hidden by default but becomes prominently visible on focus, as required.
*   **Reduced Motion:** A `prefers-reduced-motion` media query is implemented to disable all CSS transitions and animations for users who have this preference set.

## Screenshots

### Desktop View
![Desktop screenshot of the homepage](URL_to_your_desktop_screenshot.png)

### Mobile View
![Mobile screenshot of the homepage](URL_to_your_mobile_screenshot.png)