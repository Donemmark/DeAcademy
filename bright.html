<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gamified Learning for Students with Autism</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: 'Arial', sans-serif;
        }
        .option-btn {
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .option-btn:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .feedback-correct {
            color: green;
            font-weight: bold;
            animation: bounce 1s ease inserter;
        }
        .feedback-incorrect {
            color: red;
            font-weight: bold;
            animation: shake 0.5s ease;
        }
        @keyframes bounce {
            0%, 20%, 53%, 80%, 100% { transform: translateY(0); }
            40%, 43% { transform: translateY(-10px); }
            70% { transform: translateY(-5px); }
            90% { transform: translateY(-2px); }
        }
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }
        .animate-fade-in {
            animation: fadeIn 1s ease-in;
        }
        .animate-slide-in {
            animation: slideIn 0.5s ease;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideIn {
            from { transform: translateX(100%); }
            to { transform: translateX(0); }
        }
        .progress-fill {
            width: 0%;
            height: 12px;
            background: linear-gradient(90deg, #4CAF50, #8BC34A);
            border-radius: 6px;
            transition: width 0.5s ease;
        }
        .question-img {
            width: 200px;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
            margin: 20px auto;
            display: block;
            transition: transform 0.5s;
        }
        .question-img:hover {
            transform: rotate(2deg);
        }
        .badge-img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            margin: 0 10px;
        }
        .user-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 4px solid #4CAF50;
            margin: 10px auto;
            display: block;
        }
        .drag-item {
            width: 100px;
            height: 100px;
            border-radius: 10px;
            display: inline-block;
            margin: 10px;
            cursor: grab;
            transition: transform 0.3s;
        }
        .drag-item:hover {
            transform: scale(1.1);
        }
        .drop-zone {
            width: 150px;
            height: 150px;
            border: 2px dashed #ccc;
            border-radius: 10px;
            margin: 10px;
            display: inline-block;
            position: relative;
            transition: all 0.3s;
        }
        .drop-zone:hover {
            border-color: #4CAF50;
        }
        .matched {
            background-color: #d4edda;
            border-color: #28a745;
        }
        .matched:hover {
            background-color: #c3e6cb;
        }
        .sound-btn {
            position: fixed;
            top: 10px;
            right: 10px;
            width: 50px;
            height: 50px;
            background: url('https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/81ba971f-994a-4d98-9288-07571d150de3.png') no-repeat center;
            background-size: contain;
            border-radius: 50%;
            border: none;
            cursor: pointer;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body class="flex items-center justify-center min-h-screen">
    <button id="sound-btn" class="sound-btn" onclick="toggleSound()" aria-label="Toggle sound on/off"></button>
    <div class="bg-white shadow-lg rounded-lg p-8 max-w-2xl w-full" id="app">
        <h1 class="text-2xl font-bold text-center mb-6 text-gray-800">Gamified Learning Environment</h1>
        
        <!-- User Avatar -->
        <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/87282789-d8f6-4b42-bd99-3fd12fb6239d.png" alt="Smiling child's face with round cheeks, bright eyes, and expressive mouth, wearing a blue shirt, representing a cheerful learner in a friendly educational setting" class="user-avatar">
        
        <!-- Progress Bar -->
        <div class="w-full bg-gray-200 rounded-full h-3 mb-4">
            <div class="progress-fill" id="progress-bar"></div>
        </div>
        
        <!-- Status -->
        <div class="flex justify-between mb-4 text-lg text-gray-700">
            <span id="points">Points: 0</span>
            <span id="level">Level: 1</span>
        </div>
        
        <!-- Level Info -->
        <div class="text-center mb-4">
            <p id="level-desc">Level 1: Basic Knowledge - Learn basic facts with quizzes.</p>
        </div>
        
        <!-- Question/Matching Game -->
        <div id="quiz-container" class="mb-6 animate-fade-in">
            <h2 class="text-xl mb-4 text-center" id="question">Welcome! Click Start to begin.</h2>
            <img id="question-img" class="question-img" src="" alt="" style="display: none;">
            <div id="options" class="space-y-3"></div>
            <!-- Matching Game Elements -->
            <div id="matching-game" class="hidden text-center">
                <h3 class="text-lg mb-4">Match the images to their descriptions!</h3>
                <div id="drag-items" class="mb-4"></div>
                <div id="drop-zones" class="space-y-2"></div>
            </div>
        </div>
        
        <!-- Buttons -->
        <div class="flex justify-between">
            <button id="start-btn" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded-lg text-lg" onclick="startLevel()">Start Level</button>
            <button id="next-btn" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-6 rounded-lg text-lg hidden animate-slide-in" onclick="nextQuestion()">Next</button>
        </div>
        
        <!-- Feedback -->
        <div id="feedback" class="mt-6 text-center hidden animate-fade-in">
            <p id="feedback-text"></p>
            <img id="feedback-img" src="" alt="" class="question-img mt-2 hidden">
        </div>
        
        <!-- Level Complete -->
        <div id="level-complete" class="mt-6 text-center hidden animate-fade-in">
            <h2 class="text-2xl text-green-600">Level Complete!</h2>
            <p id="level-points"></p>
            <p id="new-level"></p>
            <button class="mt-4 bg-purple-500 hover:bg-purple-700 text-white font-bold py-3 px-6 rounded-lg text-lg" onclick="continueToNextLevel()">Continue to Next Level</button>
        </div>
        
        <!-- Final Result -->
        <div id="result" class="mt-6 text-center hidden animate-fade-in">
            <h2 class="text-2xl mb-4 text-green-600">All Levels Completed! Congratulations!</h2>
            <p id="final-points"></p>
            <p id="final-level"></p>
            <div class="mt-4">
                <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/c2ce62b9-376a-4339-9cc5-ec3ace72bf11.png" alt="Shining golden star medal with engraved patterns and a ribbon, awarded for excellent quiz performance, glowing on a white background to celebrate success" class="badge-img inline-block">
                <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/871f74f4-1d47-4792-b6e9-cabff93bf872.png" alt="Multicolored trophy shaped like a rainbow with sparkles, signifying progress and achievement, placed on a pedestal against a blue sky backdrop" class="badge-img inline-block">
            </div>
            <button class="mt-4 bg-purple-500 hover:bg-purple-700 text-white font-bold py-3 px-6 rounded-lg text-lg" onclick="restartGame()">Play Again</button>
        </div>
    </div>

    <!-- Audio for sound effects -->
    <audio id="correct-sound" preload="auto">
        <source src="data:audio/wav;base64,UklGRnocxoOAhANdmRpFB0TcvH1Q3FpF3NpGRUEHBw==" type="audio/wav">
    </audio>
    <audio id="incorrect-sound" preload="auto">
        <source src="data:audio/wav;base64,UklGRnocxoOAhANdmRpFB0TcvH1Q3FpF3NpGRUEHBw==" type="audio/wav">
    </audio>

    <script>
        const levels = [
            {
                name: "Basic Knowledge",
                desc: "Learn basic facts with quizzes.",
                type: "quiz",
                questions: [
                    { question: "What color is the sky on a sunny day?", options: ["Blue", "Green", "Red", "Yellow"], answer: "Blue", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/96acae41-b196-41d6-b471-1c6146039069.png", imgAlt: "Vast, clear blue sky during daytime with scattered white clouds, no birds or other elements, providing a calm visual context for the color blue" },
                    { question: "What is 2 + 3?", options: ["4", "5", "6", "7"], answer: "5", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/1c465f8c-9c25-42bc-bb57-8b5c79cd5a22.png", imgAlt: "Two red apples on the left, a plus sign, three bananas on the right, simple mathematical representation in a clean arrangement for visual counting" }
                ]
            },
            {
                name: "Animal Facts",
                desc: "Match animals to their facts.",
                type: "matching",
                items: [
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/f57ef335-4e57-4e20-9f7d-f469e2b9b7bd.png", imgAlt: "Kangaroo standing with characteristic pouch and ears, in a neutral grassy background", text: "Jumps high" },
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/ee9dcf8b-59d4-4bb9-941d-d66dc913614c.png", imgAlt: "Orange tiger with black stripes standing powerfully, in a forest setting", text: "Has stripes" },
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/ec126728-db90-4727-9158-a8e87a1f913a.png", imgAlt: "Colorful butterfly with wings spread, patterned like stained glass, on a flower stem", text: "Has wings" }
                ]
            },
            {
                name: "Shape Hunt",
                desc: "Identify shapes in images.",
                type: "quiz",
                questions: [
                    { question: "What shape is this?", options: ["Square", "Triangle", "Circle", "Rectangle"], answer: "Triangle", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/f1ef2c94-6b67-45b2-8a45-cd600bd6e002.png", imgAlt: "Simple equilateral triangle with three equal sides and vertices labeled, drawn in blue on a white canvas for clear geometric illustration" },
                    { question: "What shape is this?", options: ["Square", "Triangle", "Circle", "Rectangle"], answer: "Circle", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/422b26ec-d94d-47b1-81f1-e47e5d101b87.png", imgAlt: "Perfect circle shape drawn in pink on a plain background, with no other elements for focus" }
                ]
            },
            {
                name: "Buzzing Bees",
                desc: "Answer bee-related questions.",
                type: "quiz",
                questions: [
                    { question: "What do bees make?", options: ["Honey", "Milk", "Tea", "Juice"], answer: "Honey", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/c36f45e1-7616-4e6a-98ad-c8f41e1b3b90.png", imgAlt: "Glass jar filled with golden honey beside a honeycomb piece, beeswax texture visible, set on a wooden table in a bright kitchen" },
                    { question: "Where do bees live?", options: ["Hive", "House", "Tree", "Sky"], answer: "Hive", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/f355bb39-8327-4406-9ce8-2a6aeac7760e.png", imgAlt: "Traditional beehive with hexagonal cells filled with honey, wooden structure in a sunny meadow" }
                ]
            },
            {
                name: "Mixed Challenge",
                desc: "A mix of quiz and matching!",
                type: "mixed",
                quiz: [{ question: "What is this fruit?", options: ["Apple", "Banana", "Orange", "Grape"], answer: "Apple", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/b046684d-4f8b-4308-82b3-c685bb28ab90.png", imgAlt: "Single green apple on a white surface, simple and clear for identification" }],
                matching: [
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/846a9fa4-e993-4172-b60a-ecba382cec05.png", imgAlt: "Green frog sitting on a leaf, with large eyes and slender body", text: "Lives in water" }
                ]
            },
            // Adding 5 more levels for total 10
            {
                name: "Color Match",
                desc: "Match colors to objects.",
                type: "matching",
                items: [
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/d88a09e2-bbfd-4367-9eef-3048bc5e1e7c.png", imgAlt: "Red apple on a white background", text: "Red" },
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/629235ad-9f29-4bcd-b1f7-4fd8cc25e99d.png", imgAlt: "Blue ball on grass", text: "Blue" },
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/103d1427-9ac4-4170-a8d8-da9375f02bca.png", imgAlt: "Green leaf on branch", text: "Green" }
                ]
            },
            {
                name: "Number Fun",
                desc: "Identify numbers.",
                type: "quiz",
                questions: [
                    { question: "What number is this?", options: ["1", "2", "3", "4"], answer: "2", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/a3df5ef7-bd53-4630-8ba7-aafd6996361e.png", imgAlt: "Numeric 2 in yellow on black" },
                    { question: "What number is this?", options: ["5", "6", "7", "8"], answer: "7", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/08f1d2ab-2cdc-4595-ae4a-c25d0ca57749.png", imgAlt: "Numeric 7 in orange on white" }
                ]
            },
            {
                name: "Weather Wonders",
                desc: "Learn about weather.",
                type: "quiz",
                questions: [
                    { question: "What do we see in the sky during rain?", options: ["Snow", "Sun", "Clouds", "Stars"], answer: "Clouds", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/c9c39991-4e23-43b0-99db-00632738509c.png", imgAlt: "Gray clouds with rain drops" },
                    { question: "What is hot?", options: ["Ice", "Snow", "Sun", "Rain"], answer: "Sun", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/882e3dfb-ca1b-4877-8c7a-1b895cdfbbe2.png", imgAlt: "Bright sun with rays" }
                ]
            },
            {
                name: "Fruit Fiesta",
                desc: "Match fruits to colors.",
                type: "matching",
                items: [
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/89629b59-8d8a-4d43-ae86-4f6c79cdf121.png", imgAlt: "Yellow banana", text: "Yellow" },
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/5af198f2-82c2-4a21-af62-c19eca65db10.png", imgAlt: "Red strawberry", text: "Red" },
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/320006f3-696f-4877-8926-a26d26463b70.png", imgAlt: "Green apple", text: "Green" }
                ]
            },
            {
                name: "Final Mix",
                desc: "Everything mixed up!",
                type: "mixed",
                quiz: [{ question: "What is 1 + 1?", options: ["1", "2", "3", "4"], answer: "2", imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/f7a23bea-b5dd-4521-bf8b-4cda8a2da8d7.png", imgAlt: "Numbers 1 and 1 with plus sign" }],
                matching: [
                    { imgSrc: "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/c019c739-646a-4e83-a304-45d9818ba45b.png", imgAlt: "Golden dog", text: "Barks" }
                ]
            }
        ];

        let currentLevel = 0;
        let currentQuestionIndex = 0;
        let points = 0;
        let selectedOption = null;
        let draggedItem = null;
        let isQuizDone = false;
        let soundEnabled = true;

        const elements = {
            question: document.getElementById('question'),
            questionImg: document.getElementById('question-img'),
            options: document.getElementById('options'),
            matchingGame: document.getElementById('matching-game'),
            dragItems: document.getElementById('drag-items'),
            dropZones: document.getElementById('drop-zones'),
            feedback: document.getElementById('feedback'),
            feedbackText: document.getElementById('feedback-text'),
            feedbackImg: document.getElementById('feedback-img'),
            startBtn: document.getElementById('start-btn'),
            nextBtn: document.getElementById('next-btn'),
            pointsEl: document.getElementById('points'),
            levelEl: document.getElementById('level'),
            levelDesc: document.getElementById('level-desc'),
            progressBar: document.getElementById('progress-bar'),
            levelComplete: document.getElementById('level-complete'),
            result: document.getElementById('result'),
            quizContainer: document.getElementById('quiz-container')
        };

        function startLevel() {
            elements.startBtn.classList.add('hidden');
            elements.levelComplete.classList.add('hidden');
            elements.result.classList.add('hidden');
            currentQuestionIndex = 0;
            isQuizDone = false;
            showLevel(currentLevel);
        }

        function showLevel(levelIndex) {
            const level = levels[levelIndex];
            elements.levelDesc.textContent = `Level ${levelIndex + 1}: ${level.name} - ${level.desc}`;
            elements.quizContainer.classList.remove('animate-fade-in');
            void elements.quizContainer.offsetWidth;
            elements.quizContainer.classList.add('animate-fade-in');

            if (level.type === 'quiz') {
                showQuizQuestion(level.questions[currentQuestionIndex]);
            } else if (level.type === 'matching') {
                showMatchingGame(level.items);
            } else if (level.type === 'mixed') {
                if (!isQuizDone) {
                    showQuizQuestion(level.quiz[currentQuestionIndex]);
                } else {
                    showMatchingGame(level.matching);
                }
            }
        }

        function showQuizQuestion(q) {
            selectedOption = null;
            elements.feedback.classList.add('hidden');
            elements.question.textContent = q.question;
            elements.questionImg.src = q.imgSrc;
            elements.questionImg.alt = q.imgAlt;
            elements.questionImg.style.display = 'block';
            elements.matchingGame.classList.add('hidden');
            elements.options.innerHTML = '';

            q.options.forEach(option => {
                const btn = document.createElement('button');
                btn.textContent = option;
                btn.className = 'option-btn w-full text-left py-4 px-5 bg-gray-200 hover:bg-gray-300 rounded-lg text-xl';
                btn.setAttribute('aria-pressed', 'false');
                btn.addEventListener('click', () => selectOption(option, btn));
                elements.options.appendChild(btn);
            });
        }

        function showMatchingGame(items) {
            elements.question.textContent = 'Match the images to their descriptions!';
            elements.questionImg.style.display = 'none';
            elements.options.innerHTML = '';
            elements.matchingGame.classList.remove('hidden');
            elements.dragItems.innerHTML = '';
            elements.dropZones.innerHTML = '';

            items.forEach((item, index) => {
                const dragImg = document.createElement('img');
                dragImg.src = item.imgSrc;
                dragImg.alt = item.imgAlt;
                dragImg.className = 'drag-item cursor-grab';
                dragImg.draggable = true;
                dragImg.addEventListener('dragstart', () => draggedItem = item.text);
                elements.dragItems.appendChild(dragImg);

                const dropZone = document.createElement('div');
                dropZone.className = 'drop-zone';
                dropZone.textContent = item.text;
                dropZone.addEventListener('dragover', e => e.preventDefault());
                dropZone.addEventListener('drop', () => handleDrop(dropZone, item.text));
                elements.dropZones.appendChild(dropZone);
            });
        }

        function selectOption(option, btn) {
            selectedOption = option;
            Array.from(elements.options.children).forEach(b => {
                b.className = 'option-btn w-full text-left py-4 px-5 bg-gray-200 rounded-lg text-xl';
                b.setAttribute('aria-pressed', 'false');
            });
            btn.className = 'option-btn w-full text-left py-4 px-5 bg-blue-500 text-white rounded-lg text-xl';
            btn.setAttribute('aria-pressed', 'true');
            elements.nextBtn.classList.remove('hidden');
        }

        function nextQuestion() {
            elements.nextBtn.classList.add('hidden');
            const level = levels[currentLevel];
            if (level.type === 'quiz' || level.type === 'mixed') {
                const q = level.type === 'mixed' ? level.quiz[currentQuestionIndex] : level.questions[currentQuestionIndex];
                elements.feedback.classList.remove('hidden');
                elements.feedbackImg.classList.remove('hidden');
                if (selectedOption === q.answer) {
                    points += 10;
                    elements.feedbackText.textContent = "Correct! Excellent work!";
                    elements.feedbackText.className = 'feedback-correct';
                    elements.feedbackImg.src = "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/0b91261c-6f21-41d8-9996-55d597489ef1.png";
                    elements.feedbackImg.alt = "Smiling green checkmark icon bouncing gently on a light green background, representing success and approval";
                    if (soundEnabled) {
                        speak("Great job! You're doing fantastic!");
                        playSound('correct');
                    }
                } else {
                    elements.feedbackText.textContent = "Not quite, but keep trying!";
                    elements.feedbackText.className = 'feedback-incorrect';
                    elements.feedbackImg.src = "https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/5717da1c-e021-4661-8904-22703171dfb0.png";
                    elements.feedbackImg.alt = "Soft red X with gentle curved lines on a warm background, encouraging positive feedback";
                    if (soundEnabled) {
                        speak("Nice effort! Try again!");
                        playSound('incorrect');
                    }
                }
                updateDisplay();
                setTimeout(() => {
                    currentQuestionIndex++;
                    const currentItems = level.type === 'mixed' ? level.quiz : level.questions;
                    if (currentQuestionIndex < currentItems.length) {
                        showQuizQuestion(currentItems[currentQuestionIndex]);
                    } else {
                        if (level.type === 'mixed' && !isQuizDone) {
                            isQuizDone = true;
                            currentQuestionIndex = 0;
                            showMatchingGame(level.matching);
                        } else {
                            showLevelComplete();
                        }
                    }
                }, 2500);
            }
        }

        function handleDrop(dropZone, correctText) {
            if (draggedItem === correctText) {
                dropZone.classList.add('matched');
                points += 15;
                if (soundEnabled) {
                    speak("Perfect match!");
                    playSound('correct');
                }
                updateDisplay();
                if (Array.from(elements.dropZones.children).every(dz => dz.classList.contains('matched'))) {
                    setTimeout(showLevelComplete, 1000);
                }
            } else {
                dropZone.style.backgroundColor = '#ffebee';
                setTimeout(() => dropZone.style.backgroundColor = '', 500);
            }
        }

        function showLevelComplete() {
            elements.levelComplete.querySelector('#level-points').textContent = `Earned points in this level: ${points}`;
            elements.levelComplete.querySelector('#new-level').textContent = `Ready for next level?`;
            elements.levelComplete.classList.remove('hidden');
            elements.quizContainer.classList.add('hidden');
            if (soundEnabled) {
                speak("Level complete! You're amazing!");
            }
        }

        function continueToNextLevel() {
            elements.levelComplete.classList.add('hidden');
            currentLevel++;
            if (currentLevel < levels.length) {
                updateDisplay();
                elements.startBtn.innerText = `Start Level ${currentLevel + 1}`;
                elements.startBtn.classList.remove('hidden');
            } else {
                showFinalResult();
            }
        }

        function showFinalResult() {
            elements.result.querySelector('#final-points').textContent = `Total Points: ${points}`;
            elements.result.querySelector('#final-level').textContent = `Final Level: ${currentLevel + 1}`;
            elements.result.classList.remove('hidden');
            if (soundEnabled) {
                speak("Congratulations! You've completed all levels!");
            }
        }

        function restartGame() {
            currentLevel = 0;
            points = 0;
            currentQuestionIndex = 0;
            isQuizDone = false;
            updateDisplay();
            elements.result.classList.add('hidden');
            elements.startBtn.classList.remove('hidden');
            elements.startBtn.innerText = 'Start Level 1';
        }

        function updateDisplay() {
            elements.pointsEl.textContent = `Points: ${points}`;
            elements.levelEl.textContent = `Level: ${currentLevel + 1}`;
            elements.progressBar.style.width = `${((currentLevel + 1) / levels.length) * 100}%`;
        }

        function speak(text) {
            if ('speechSynthesis' in window) {
                const utterance = new SpeechSynthesisUtterance(text);
                utterance.rate = 0.7;
                utterance.pitch = 1.2;
                window.speechSynthesis.speak(utterance);
            }
        }

        function playSound(type) {
            const audio = document.getElementById(type + '-sound');
            if (audio) {
                audio.currentTime = 0;
                audio.play();
            }
        }

        function toggleSound() {
            soundEnabled = !soundEnabled;
            document.getElementById('sound-btn').style.background = soundEnabled ?
                'url("https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/ed3e109d-47b7-4741-a58e-6109927b2a02.png") no-repeat center' :
                'url("https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/2af93838-d4b7-4f98-a20e-1864fe0e0fd4.png") no-repeat center';
        }

        // Keyboard and accessibility
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Enter' && !elements.nextBtn.classList.contains('hidden')) {
                nextQuestion();
            } else if (e.key >= '1' && e.key <= '4' && elements.options.children.length > 0) {
                const index = parseInt(e.key) - 1;
                if (elements.options.children[index]) {
                    elements.options.children[index].click();
                }
            }
        });
    </script>
</body>
</html>
</content>
</create_file>
