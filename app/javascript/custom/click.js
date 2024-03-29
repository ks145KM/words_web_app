document.addEventListener("turbo:load", function(){

    let currentIndex = JSON.parse(document.getElementById("start-index").dataset.json);
    let words = JSON.parse(document.getElementById("words_array").dataset.json);  
    let wordsLength = words.length;

    const getNextWord = () => {
        
        currentIndex = (currentIndex + 1) % wordsLength;
        
        let wordName = document.getElementById("word-name");
        let wordMeaning = document.getElementById("word-meaning");

        wordName.innerText = words[currentIndex].name;
        wordMeaning.innerText = words[currentIndex].meaning;

    };

    const getPrevWord = () => {
        
        if (currentIndex == 0) currentIndex = wordsLength - 1;
        else currentIndex = (currentIndex - 1) % wordsLength;
        
        let wordName = document.getElementById("word-name");
        let wordMeaning = document.getElementById("word-meaning");

        wordName.innerText = words[currentIndex].name;
        wordMeaning.innerText = words[currentIndex].meaning;

    };

    let nextButton = document.getElementById("next-button");
    nextButton.addEventListener("click", getNextWord);

    let prevButton = document.getElementById("prev-button");
    prevButton.addEventListener("click", getPrevWord);

})