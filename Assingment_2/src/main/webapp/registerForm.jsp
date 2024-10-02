<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex flex-col gap-5 items-center justify-center h-screen">
<div class="w-full max-w-md bg-white shadow-md rounded-lg p-8">
    <h2 class="text-2xl font-bold text-center mb-6 text-gray-700">Register</h2>
    <form action="/auth/register" method="POST">
        <div class="mb-4">
            <label for="usr_name" class="block text-gray-600 font-semibold">User Name</label>
            <input type="text" id="usr_name" name="usr_name" class="w-full p-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
        </div>
        <div class="mb-4">
            <label for="usr_email" class="block text-gray-600 font-semibold">Email</label>
            <input type="email" id="usr_email" name="usr_email" class="w-full p-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
        </div>
        <div class="mb-4">
            <label for="usr_pwd" class="block text-gray-600 font-semibold">Password</label>
            <input type="password" id="usr_pwd" name="usr_pwd" class="w-full p-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
        </div>
        <div class="mb-4">
            <label for="usr_contact" class="block text-gray-600 font-semibold">Phone</label>
            <input type="text" id="usr_contact" name="usr_contact" class="w-full p-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
        </div>
        <div class="mb-4">
            <label for="usr_contact" class="block text-gray-600 font-semibold">City</label>
            <input type="text" id="usr_city" name="usr_contact" class="w-full p-2 mt-1 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" required>
        </div>
        <button type="submit" class="w-full bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-600 transition duration-300">Register</button>
    </form>
    <p class="text-center mt-6 text-gray-500">Already have an account? <a href="/auth/login" class="text-blue-500 hover:underline">Login here</a></p>
</div>
</body>
</html>
