function dataLoad() {
  // edit the API data at https://www.npoint.io/docs/9787612add7f474247e4
  fetch('https://api.npoint.io/9787612add7f474247e4')
    .then(response => response.json())
      .then(data => console.log(data))
    .catch( error => console.error(error));
}

dataLoad()

