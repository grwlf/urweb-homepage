
fun main {} : transaction page =
  return
  <xml>
    <head/>
    <body>
      <p>
      <h3>Urweb-monad-pack</h3>
      <a link={XmlGenDemo.viewm {}}>XmlGen demo</a>
      </p>
      <p>
      <h3>Compet</h3>
      The archery competitions helper in it's early development state. In this
      application XmlGen monad is used for the HTML generation.
      <a link={Compet.main {}}>Compet main page</a>
      </p>
      <p>
      <h3>Urweb-callback</h3>
      <a link={Demo2.main {}}>Ping demo</a>
      </p>
      <p>
      <h3>Uru (Bootstrap3)</h3>
      <a link={B1.main {}}>Demo1</a>
      <a link={B2.main {}}>Demo2</a>
      </p>

    </body>
  </xml>

