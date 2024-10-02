<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Register App</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

<!-- Navbar -->
<header class="bg-white shadow-md">
    <nav class="container mx-auto px-6 py-4 flex justify-between items-center">
        <h1 class="text-2xl font-bold text-gray-700">Welcome to Our App</h1>
        <div>
            <a href="/auth/login" class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 transition duration-300 mr-2">Login</a>
            <a href="/auth/register" class="bg-green-500 text-white py-2 px-4 rounded-md hover:bg-green-600 transition duration-300">Register</a>
        </div>
    </nav>
</header>

<!-- Main Content -->
<main class="flex-grow container mx-auto px-6 py-16">
    <div class="text-center">
        <h2 class="text-4xl font-bold text-gray-800 mb-4">Join Us Today</h2>
        <p class="text-lg text-gray-600 mb-8">Register or login to get started with our amazing platform.</p>

        <div class="flex justify-center space-x-4">
            <a href="/auth/register" class="bg-green-500 text-white py-3 px-6 rounded-lg hover:bg-green-600 transition duration-300">
                Create an Account
            </a>
            <a href="/auth/login" class="bg-blue-500 text-white py-3 px-6 rounded-lg hover:bg-blue-600 transition duration-300">
                Already Have an Account? Login
            </a>
        </div>
    </div>

    <!-- Additional Message Section -->
    <section class="mt-12">
        <div class="bg-yellow-100 border-l-4 border-yellow-500 text-yellow-700 p-4" role="alert">
            <p class="font-bold">Note:</p>
            <p>This platform is for users who wish to register and login to access personalized services. Enjoy a simple and secure authentication experience.</p>
        </div>
    </section>
</main>

<!-- Footer -->
<footer class="bg-gray-800 py-4">
    <div class="container mx-auto text-center text-white">
        <p>&copy; 2024 Login & Register App. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
