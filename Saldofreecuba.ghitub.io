<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar Saldo | CUBAMAXTRAVEL</title>
    <!-- Carga de Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-image: url('https://placehold.co/1200x800/007bff/ffffff/png?text=CUBAMAX+VIAJES');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 20px;
        }
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.40); 
            z-index: 0;
        }
        .content-container {
            z-index: 10; 
            position: relative;
        }
        .card-container {
            transition: transform 0.3s ease-in-out;
        }
        .card-container:hover {
            transform: translateY(-2px);
        }
        .custom-select {
            appearance: none;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20' fill='%2310b981'%3E%3Cpath fill-rule='evenodd' d='M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z' clip-rule='evenodd' /%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 1rem center;
            background-size: 1.5em 1.5em;
            padding-right: 3rem;
        }
        .copied {
            animation: pulse-green 1.5s infinite;
        }
        @keyframes pulse-green {
            0%, 100% {
                background-color: #d1fae5;
                border-color: #10b981;
            }
            50% {
                background-color: #ecfdf5;
                border-color: #059669;
            }
        }
    </style>
</head>
<body>
    <div class="w-full max-w-sm bg-white p-6 md:p-8 shadow-2xl rounded-xl card-container content-container mt-4">
        <div class="bg-green-50 border-t-4 border-green-500 rounded-lg text-green-800 px-4 py-3 shadow-md mb-6" role="alert">
            <div class="flex items-start">
                <svg class="flex-shrink-0 h-6 w-6 text-green-500 mr-4 mt-1" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                <div>
                    <p class="font-bold text-sm">PÁGINA OFICIAL DE CUBAMAXTRAVEL</p>
                    <p class="text-xs mt-1">Contacto para dudas: <a href="mailto:cubamaxtravelsaldofree@gmail.com" class="font-semibold underline hover:text-green-600">cubamaxtravelsaldofree@gmail.com</a></p>
                </div>
            </div>
        </div>
        <h1 class="text-4xl font-extrabold text-gray-900 mb-6 text-center tracking-tight">Comprar Saldo</h1>
        <div class="bg-yellow-100 border-l-4 border-orange-500 text-yellow-800 p-4 rounded-lg mb-6 shadow-sm" role="alert">
            <p class="font-bold text-sm">¡Importante!</p>
            <p class="text-xs mt-1">Envía la transferencia **antes** de tocar "Confirmar pago".</p>
        </div>
        <div class="bg-indigo-50 border-2 border-indigo-300 rounded-xl p-4 shadow-lg mb-6 text-center transition-colors duration-300">
            <p class="text-sm text-indigo-700 font-medium mb-1">Total a transferir (CUP):</p>
            <p class="text-4xl font-black text-indigo-700 mb-3">
                <span id="totalPagar">1950</span> <span class="text-xl font-bold">CUP</span>
            </p>
            <div id="cardBox" class="bg-white border border-blue-400 rounded-lg p-3 shadow-inner cursor-pointer transition-all duration-300 hover:bg-blue-50" onclick="copyToClipboard('9238129977325317')">
                <p class="text-xs text-blue-700 mb-1 font-semibold">Enviar a la tarjeta:</p>
                <p class="text-xl font-extrabold text-blue-900 tracking-wider">
                    9238 1299 7732 5317
                    <svg id="copyIcon" class="inline-block w-5 h-5 ml-2 text-blue-600 transition-colors duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 5H6a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2v-1M8 5a2 2 0 002 2h2a2 2 0 002-2M8 5a2 2 0 012-2h2a2 2 0 012 2m0 0h2m-2 0h-2M4 7h16"></path></svg>
                </p>
                <p class="text-xs text-green-700 mt-1" id="copyMessage" style="display:none;">¡Número de tarjeta copiado!</p>
            </div>
        </div>
        <form id="purchaseForm" onsubmit="event.preventDefault(); showConfirmationModal();">
            <label for="monto" class="block text-gray-700 text-base font-semibold mb-2">Selecciona la oferta</label>
            <select id="monto" onchange="updatePaymentDetails()" class="custom-select block w-full px-4 py-3 text-base text-gray-800 bg-white border border-gray-400 rounded-lg focus:ring-green-500 focus:border-green-500 shadow-lg mb-4">
                <option value="1500_1950" data-cup="1950" data-saldo="1500">1500 saldo - 1950 CUP</option>
                <option value="2500_3250" data-cup="3250" data-saldo="2500">2500 saldo - 3250 CUP</option>
                <option value="3500_4700" data-cup="4700" data-saldo="3500">3500 saldo - 4700 CUP</option>
                <option value="5500_6700" data-cup="6700" data-saldo="5500">5500 saldo - 6700 CUP</option>
                <option value="8300_9500" data-cup="9500" data-saldo="8300">8300 saldo - 9500 CUP</option>
                <option value="promo_5625" data-cup="5625" data-saldo="Promo">Promo Internacional (25GB + datos ilimitados) - 5625 CUP</option>
            </select>
            <p id="saldoInfo" class="text-sm text-gray-500 mb-6 italic">Obtendrás 1500 de saldo.</p>
            <label for="phoneNumber" class="block text-gray-700 text-base font-semibold mb-2 mt-4">Número de teléfono (Etecsa)</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" placeholder="Ej: 53xxxxxxx" required 
                minlength="8" maxlength="15" oninput="validatePhone(this)"
                class="w-full px-4 py-3 text-gray-700 bg-white border border-gray-400 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 shadow-inner mb-4 transition-colors">
            <p id="phoneError" class="text-sm text-red-500 mb-4 h-5"></p>
            <label for="transactionId" class="block text-gray-700 text-base font-semibold mb-2">No. de Transacción (Transfermóvil)</label>
            <input type="text" id="transactionId" name="transactionId" placeholder="Ej: BTR123456XYZ" required 
                pattern="^BTR[0-9A-Za-z]{9}$" oninput="validateTransaction(this)"
                class="w-full px-4 py-3 text-gray-700 bg-white border border-gray-400 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 shadow-inner mb-4 transition-colors">
            <p id="transactionError" class="text-sm text-red-500 mb-6 h-5"></p>
            <button type="submit" id="confirmButton" class="w-full bg-green-600 hover:bg-green-700 text-white font-bold py-3 rounded-xl transition duration-300 ease-in-out shadow-xl transform hover:scale-[1.01] disabled:bg-gray-400 disabled:shadow-none">Confirmar pago</button>
        </form>
    </div>
    <div id="confirmationModal" class="fixed inset-0 bg-gray-900 bg-opacity-80 z-50 hidden flex items-center justify-center p-4">
        <div class="bg-white rounded-xl shadow-3xl p-8 w-full max-w-sm transform transition-all duration-300 scale-100">
            <div class="text-center">
                <svg class="mx-auto h-16 w-16 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>
                <h3 class="text-2xl font-extrabold text-gray-900 mt-4">¡Solicitud Enviada!</h3>
                <p class="text-sm text-gray-600 mt-2">Gracias por tu compra. Tu transacción será revisada y el saldo se aplicará en breve.</p>
                <div class="mt-6 pt-4 border-t border-gray-200">
                    <button onclick="hideConfirmationModal()" class="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 rounded-lg transition duration-300 shadow-md">Entendido</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        // JS omitted for brevity; puedes pegar el JS de tu mensaje original aquí.
    </script>
</body>
</html>
