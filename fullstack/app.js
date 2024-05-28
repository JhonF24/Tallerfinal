const URL_BASE = "http://localhost:3006/";
const mainDiv = document.querySelector("#main_list");

const getproducts = async () =>{
    try{
    const response = await fetch(`${URL_BASE}/products`);
    const { data } = await response.json();
    let content = "";
    for (const product of data){
        content += `
        <div class="box">
            <p><spam>nombre:</spam>${product.name}</p>
            <p><spam>categoria:</spam>${product.category}</p>
            <p><spam>precio:</spam>${product.price}</p>

        </div>
        `;
    }
    mainDiv.innerHTML = content;

    }catch (error){
        console.log(error);
    }
};


getproducts();

const form = document.getElementById('delete-product-form');

form.addEventListener('submit', async (event) => {
  event.preventDefault();

  const productId = document.getElementById('product-id').value;

  try {
    const response = await fetch(`/products/${productId}`, {
      method: 'DELETE',
    });

    const data = await response.json();

    if (data.success) {
      alert('Producto eliminado exitosamente');
    } else {
      alert('Error al eliminar el producto');
    }
  } catch (error) {
    alert('Error al enviar la solicitud');
  }
});


const createProductForm = document.getElementById('create-product-form');

createProductForm.addEventListener('submit', async (event) => {
  event.preventDefault();

  const name = document.getElementById('product-name').value;
  const category = document.getElementById('product-category').value;
  const price = parseFloat(document.getElementById('product-price').value);

  try {
    const response = await fetch(`${URL_BASE}/products`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ name, category, price }),
    });

    const data = await response.json();

    if (data.success) {
      alert('Producto creado exitosamente');
      getProducts();
    } else {
      alert('Error al crear el producto');
    }
  } catch (error) {
    alert('Error al enviar la solicitud');
  }
});

getproducts();


