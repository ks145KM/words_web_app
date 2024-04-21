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

    //editをクリックしたときの処理
    //currentIndexをrailsに渡す
    const editWord = () => {
        console.log(currentIndex);
        let lnk = document.getElementById("edit-button");
        let param = "?current_id=" + words[currentIndex].id;
        lnk.setAttribute('href',lnk.href+param);
    }

    
    let nextButton = document.getElementById("next-button");
    nextButton.addEventListener("click", getNextWord);

    let prevButton = document.getElementById("prev-button");
    prevButton.addEventListener("click", getPrevWord);

    let editButton = document.getElementById("edit-button");
    editButton.addEventListener("click", editWord);

})