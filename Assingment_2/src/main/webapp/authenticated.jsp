<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Authenticated</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
<div class="w-full max-w-lg bg-white shadow-md rounded-lg p-8">
    <h2 class="text-2xl font-bold text-center mb-4 text-gray-700">Welcome, you are successfully authenticated!</h2>
    <p class="text-gray-600 text-center mb-6">You are now logged in. Enjoy browsing the website.</p>
    <div class="flex justify-center">
        <a href="/" class="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 transition duration-300">Go to Homepage</a>
    </div>
    <div class="flex justify-center mt-4">
        <a href="/auth/logout" class="text-blue-500 hover:underline">Logout</a>
    </div>
</div>
</body>
</html>
