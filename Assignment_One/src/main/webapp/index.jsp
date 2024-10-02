<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Form | Ananta Poudel - C0913139</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 p-8">

<form action="StudentRegistrationController" method="post" class="max-w-2xl mx-auto bg-white p-6 rounded-lg shadow-lg">
    <h1 class="text-3xl font-bold text-center mb-6 text-indigo-600">Student Registration Form</h1>

    <!-- Date -->
    <div class="flex justify-end items-center mb-4">
        <label class="text-sm font-semibold mr-4">Date:</label>
        <input type="date" name="date" class="border border-gray-300 p-2 rounded-md w-48" required>
    </div>

    <!-- Personal Information -->
    <div class="mb-6">
        <h2 class="text-lg font-semibold text-gray-700 border-b pb-2 mb-4">Personal Information</h2>
        <div class="mb-4">
            <label class="block font-semibold mb-2">Name</label>
            <input type="text" name="name" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Enter your name" required>
        </div>
        <div>
            <label class="block font-semibold mb-2">Date of Birth</label>
            <input type="date" name="dob" class="w-full border border-gray-300 p-2 rounded-md" required>
        </div>
    </div>

    <!-- Contact Information -->
    <div class="mb-6">
        <h2 class="text-lg font-semibold text-gray-700 border-b pb-2 mb-4">Contact Information</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
            <div>
                <label class="block font-semibold mb-2">Address</label>
                <input type="text" name="address" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Enter your address" required>
            </div>
            <div>
                <label class="block font-semibold mb-2">City</label>
                <input type="text" name="city" class="w-full border border-gray-300 p-2 rounded-md" placeholder="City" required>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
            <div>
                <label class="block font-semibold mb-2">Province/State</label>
                <input type="text" name="state" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Province/State" required>
            </div>
            <div>
                <label class="block font-semibold mb-2">Zip Code</label>
                <input type="text" name="zip" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Zip Code" required>
            </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
            <div>
                <label class="block font-semibold mb-2">Country</label>
                <input type="text" name="country" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Country" required>
            </div>
            <div>
                <label class="block font-semibold mb-2">Phone</label>
                <input type="tel" name="phone" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Phone" required>
            </div>
        </div>

        <div>
            <label class="block font-semibold mb-2">Email</label>
            <input type="email" name="email" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Email" required>
        </div>

        <!-- Membership Type -->
        <div class="mt-4">
            <label class="block font-semibold mb-2">Membership Type</label>
            <div class="flex items-center space-x-4">
                <label class="flex items-center">
                    <input type="radio" name="membership" class="mr-2" value="regular" required> Regular
                </label>
                <label class="flex items-center">
                    <input type="radio" name="membership" class="mr-2" value="premium" required> Premium
                </label>
                <label class="flex items-center">
                    <input type="radio" name="membership" class="mr-2" value="vip" required> VIP
                </label>
            </div>
        </div>
    </div>

    <!-- Course Information -->
    <div class="mb-6">
        <h2 class="text-lg font-semibold text-gray-700 border-b pb-2 mb-4">Course Information</h2>
        <div class="mb-4">
            <label class="block font-semibold mb-2">Course Name</label>
            <input type="text" name="course" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Enter the course name" required>
        </div>
        <div class="mb-4">
            <label class="block font-semibold mb-2">Payment Details</label>
            <div class="flex items-center space-x-4">
                <label class="flex items-center">
                    <input type="radio" name="payment" class="mr-2" value="cash" required> Cash
                </label>
                <label class="flex items-center">
                    <input type="radio" name="payment" class="mr-2" value="cheque" required> Cheque
                </label>
                <label class="flex items-center">
                    <input type="radio" name="payment" class="mr-2" value="credit-card" required> Credit Card
                </label>
            </div>
        </div>
        <div>
            <label class="block font-semibold mb-2">Comments</label>
            <textarea name="comments" class="w-full border border-gray-300 p-2 rounded-md" rows="4" placeholder="Add your comments"></textarea>
        </div>
    </div>

    <!-- Signatures -->
    <div class="grid grid-cols-2 gap-4 mb-6">
        <div>
            <label class="block font-semibold mb-2">Student's Signature</label>
            <input type="text" name="signature" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Signature" required>
        </div>
        <div>
            <label class="block font-semibold mb-2">Validated By</label>
            <input type="text" name="validatedBy" class="w-full border border-gray-300 p-2 rounded-md" placeholder="Validator" required>
        </div>
    </div>

    <!-- Submit Button -->
    <div class="text-center">
        <button type="submit" class="bg-indigo-600 text-white py-3 px-8 rounded-md text-lg font-semibold hover:bg-indigo-700 w-full">Submit</button>
    </div>

</form>
</body>
</html>
