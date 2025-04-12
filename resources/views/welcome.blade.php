<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Light Instagram</title>
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    @vite('resources/css/app.css')
</head>
<body class="bg-gradient-to-br from-blue-300 via-blue-100 to-indigo-100 min-h-screen flex items-center justify-center">
    <div class="bg-white shadow-xl rounded-2xl max-w-4xl w-full p-10 flex flex-col md:flex-row items-center space-y-10 md:space-y-0 md:space-x-10">
        <div class="flex-1 text-center md:text-left">
            <h1 class="text-4xl font-extrabold text-gray-800 mb-4">Selamat Datang di <span class="text-blue-600">Personal Light Instagram</span></h1>
            <p class="text-lg text-gray-600 mb-6">
                Jelajahi cara baru untuk berbagi foto dan video dalam versi ringan & personal.
            </p>
            <div class="flex justify-center md:justify-start space-x-4">
                @auth
                    <a href="{{ route('dashboard') }}" class="px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-xl shadow">
                        Dashboard
                    </a>
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf
                        <button type="submit" class="px-6 py-3 border border-red-600 hover:bg-red-100 text-red-600 font-semibold rounded-xl shadow">
                            Logout
                        </button>
                    </form>
                @else
                    <a href="{{ route('login') }}" class="px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-xl shadow">
                        Login
                    </a>
                    <a href="{{ route('register') }}" class="px-6 py-3 border border-blue-600 hover:bg-blue-100 text-blue-600 font-semibold rounded-xl shadow">
                        Register
                    </a>
                @endauth
            </div>
        </div>
        <div class="flex-1">
            <img src="https://cdn-icons-png.flaticon.com/512/174/174855.png" alt="Instagram Style" class="w-full max-w-xs mx-auto">
        </div>
    </div>
</body>
</html>