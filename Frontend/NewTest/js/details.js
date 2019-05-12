const progress = () => {
    const button = document.querySelector('#test')
    var index = 2;

    button.addEventListener('click', () => {
        if(index <= 4) {
            var progressbar = document.querySelector(`#progressbar li:nth-child(${index})`)
        } else {
            while(index != 1) {
                index--
                console.log(index)
                var progressbar = document.querySelector(`#progressbar li:nth-child(${index})`)
                progressbar.classList.toggle('active')
            }
        }
        progressbar.classList.toggle('active')
        index++
    })
}

progress();