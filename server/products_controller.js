module.exports = {
  getAllProducts: (req, res) => {
    const db = req.app.get('db');

    db.get_all_products().then(resp => {
      console.log(resp);
      res.status(200).send(resp);
    });
  },

  getProduct: (req, res) => {
    const db = req.app.get('db');
    const { id } = req.params;
    console.log(id)

    db.get_product([id]).then(resp => {
      console.log(resp);
      res.status(200).send(resp);
    });
  }
};
