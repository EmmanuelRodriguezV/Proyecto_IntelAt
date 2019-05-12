const input = () => {
    const loginDiv = document.querySelector('.login-input')
    const loginInput = document.querySelector('.login-input input')
    const loginInputP = document.getElementById('input-p')
    const errorMessage = document.querySelector('.error-msg')
    const loginBut = document.querySelector('.login-button')

    loginDiv.addEventListener('click', () => {
        loginInput.focus()
    })

    loginInput.addEventListener('focusin', () => {
        if(loginDiv.classList.contains('wrong-input-in')) {
            errorMessage.classList.toggle('msg-active')
            loginInputP.classList.toggle('wrong-input')
            loginInputP.classList.toggle('input-icon')
            loginDiv.classList.toggle('wrong-input-in')
            loginInput.classList.toggle('wrong-input-in')
        }
        loginDiv.classList.toggle('input-focused')
    })

    loginInput.addEventListener('focusout', () => {
        loginDiv.classList.toggle('input-focused')
    })

    loginBut.addEventListener('click', () => {
        if(loginInput.value != "test") {
            loginInput.value = ''
            errorMessage.classList.toggle('msg-active')
            loginInputP.classList.toggle('input-icon')
            loginInputP.classList.toggle('wrong-input')
            loginDiv.classList.toggle('wrong-input-in')
            loginInput.classList.toggle('wrong-input-in')
        } else {
            location.href = 'details.html'
        }
    })
}

input()