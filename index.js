function dataLoad() {
  const dataUrl = "#"

  // load file
  // fetch("data.json").then(data => console.log(data))
  // fetch('data.json', mode: 'no-cors')
  // .then(response => response.json())
  //   .then(data => console.log(data))
  //   .catch(error => console.log(error));
  fetch('https://api.github.com/users/{YOUR_USERNAME}')
    .then(response => response.json())
    .catch( error => console.error(error));
}

dataLoad()

