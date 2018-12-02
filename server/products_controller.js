module.exports = {
  getAllProducts: (req, res) => {
    const db = req.app.get('db');

    db.get_all_products().then(resp => {
      res.status(200).send(resp);
    });
  },

  getProduct: (req, res) => {
    const db = req.app.get('db');
    const { id } = req.params;

    db.get_product([id]).then(resp => {
      res.status(200).send(resp);
    });
  }
};
