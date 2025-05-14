#language: es
Característica: SauceDemo Suite Test 

  -- Criterios de Aceptación --

  1. El usuario puede iniciar sesión con credenciales válidas.
  2. El usuario no puede iniciar sesión con credenciales inválidas.
  3. El usuario puede agregar un producto al carrito desde la página de
  productos.
  4. El usuario puede ver los productos agregados en el carrito de compras.
  5. El usuario puede completar el proceso de compra hasta la
  confirmación.

  @caso1
  Esquema del escenario: Iniciar sesión exitosamente con credenciales válidas
    Dado que el usuario visita la pagina de inicio de SauceDemo
    Cuando ingresa las credenciales "<user>" y "<pass>" para iniciar sesión
    Entonces debería ser redirigido a la página de productos

    Ejemplos:
      | user          | pass         |
      | standard_user | secret_sauce |


  @caso2
  Esquema del escenario: validar los mensajes de error de login fallido
    Dado que el usuario visita la pagina de inicio de SauceDemo
    Cuando ingresa las credenciales "<user>" y "<pass>" para iniciar sesión
    Entonces valida que el mensaje de error contiene "<error>"

    Ejemplos:
      | user            | pass          | error                                                       |
      | standard_user   | secret_sauce1 | Username and password do not match any user in this service |
      | locked_out_user | secret_sauce  | Sorry, this user has been locked out.                       |
      | problem_user    |               | Password is required                                        |
      |                 | secret_sauce  | Username is required                                        |
      #| problem_user_1  | secret_sauce  | Username and password do not match any user in this service |

  @caso3
  Esquema del escenario: Completar proceso de compra exitosamente
    Dado que el usuario visita la pagina de inicio de SauceDemo
    Y ingresa las credenciales "<user>" y "<pass>" para iniciar sesión
    Y agrega el producto "<producto>" al carrito
    Cuando el usuario ve los productos en el carrito
    Y hace clic en el botón de checkout
    Y completa el formulario con nombre "<nombre>", apellido "<apellido>" y código postal "<zip>"
    Y confirma la orden
    Entonces debería ver el mensaje de confirmación "<mensaje_confirmacion>"

    Ejemplos:
      | user          | pass         | producto            | nombre | apellido  | zip   | mensaje_confirmacion      |
      | standard_user | secret_sauce | Sauce Labs Backpack | Kevin  | Hernandez | 12345 | Thank you for your order! |
