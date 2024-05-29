const URL_BASE = "http://localhost:17480";
const mainDiv = document.querySelector("#main_list");

const getProducts = async () => {
  try {
    const response = await fetch(`${URL_BASE}/products`);
    const { data } = await response.json();
    displayProducts(data);
  } catch (error) {
    console.log(error);
  }
};

const displayProducts = (products) => {
  let content = "";
  for (const product of products) {
    content += `
      <div class="box">
        <p><spam>Nombre:</spam>${product.name}</p>
        <p><spam>Categoría:</spam>${product.category}</p>
        <p><spam>Precio:</spam>${product.price}</p>
      </div>
    `;
  }
  mainDiv.innerHTML = content;
};

getProducts();

const deleteProductForm = document.getElementById('delete-product-form');

deleteProductForm.addEventListener('submit', async (event) => {
  event.preventDefault();

  const productId = document.getElementById('product-id').value;

  try {
    const response = await fetch(`${URL_BASE}/products/${productId}`, {
      method: 'DELETE',
    });

    const data = await response.json();

    if (data.success) {
      alert('Producto eliminado exitosamente');
      getProducts();
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