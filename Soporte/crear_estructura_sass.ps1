# Crear la estructura de carpetas
New-Item -ItemType Directory -Path assets\sass\abstracts,assets\sass\base,assets\sass\components,assets\sass\layout,assets\sass\pages,assets\sass\themes,assets\sass\vendors
New-Item -ItemType Directory -Path assets\css
New-Item -ItemType Directory -Path assets\img
New-Item -ItemType Directory -Path assets\js

# Crear archivos vacíos dentro de cada carpeta de Sass
New-Item -ItemType File -Path assets\sass\abstracts\_variables.scss,assets\sass\abstracts\_mixins.scss
New-Item -ItemType File -Path assets\sass\base\_reset.scss,assets\sass\base\_typography.scss
New-Item -ItemType File -Path assets\sass\components\_buttons.scss,assets\sass\components\_forms.scss
New-Item -ItemType File -Path assets\sass\layout\_header.scss,assets\sass\layout\_footer.scss
New-Item -ItemType File -Path assets\sass\pages\_home.scss,assets\sass\pages\_register.scss,assets\sass\pages\_postDetail.scss
New-Item -ItemType File -Path assets\sass\themes\_theme.scss
New-Item -ItemType File -Path assets\sass\vendors\_bootstrap.scss

# Crear el archivo principal de Sass
New-Item -ItemType File -Path assets\sass\main.scss

# Añadir las importaciones en el archivo principal de Sass
$importContent = "@import 'abstracts/variables';
@import 'abstracts/mixins';
@import 'base/reset';
@import 'base/typography';
@import 'components/buttons';
@import 'components/forms';
@import 'layout/header';
@import 'layout/footer';
@import 'pages/home';
@import 'pages/register';
@import 'pages/postDetail';
@import 'themes/theme';
@import 'vendors/bootstrap';"
Set-Content -Path assets\sass\main.scss -Value $importContent

# Crear archivos CSS, JS y HTML
New-Item -ItemType File -Path assets\css\main.css
New-Item -ItemType File -Path assets\js\main.js

# Crear el archivo index.html con una base HTML
$htmlContent = "<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset='UTF-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link rel='stylesheet' href='assets/css/main.css'>
    <link rel='preconnect' href='https://fonts.googleapis.com'>
    <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
    <link href='https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap' rel='stylesheet'>
    <title>Registro - Blog FrontEnd</title>
</head>
<body>
    <div class='registration-container'>
        <header class='header'>
            <img src='assets/img/logos/adl.png' alt='Blog FrontEnd Logo' class='header__logo'>
            <h1 class='header__title'>Blog FrontEnd</h1>
        </header>
        <main class='main'>
            <h2 class='main__title'>Regístrate ¡Es gratis!</h2>
            <form class='form'>
                <input type='text' class='form__input' placeholder='Nombre'>
                <input type='text' class='form__input' placeholder='Apellido'>
                <input type='email' class='form__input' placeholder='Email'>
                <input type='password' class='form__input' placeholder='Contraseña'>
                <input type='password' class='form__input' placeholder='Confirma tu contraseña'>
                <button type='submit' class='form__button'>Crea tu cuenta</button>
                <button type='button' class='form__google-button'> 
                    <img src='assets/img/logos/google.png' alt='Google Logo'> Regístrate con Google
                </button>
            </form>
            <p class='main__text'>¿Ya tienes una cuenta? <a href='#' class='main__link'>Inicia sesión</a></p>
        </main>
    </div>
    <script src='assets/js/main.js'></script>
</body>
</html>"
Set-Content -Path index.html -Value $htmlContent

Write-Host "Estructura de carpetas y archivos creada con éxito"
