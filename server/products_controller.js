module.exports = {
  getAllProducts: (req, res) => {
    const db = req.app.get('db');
    const { gender } = req.params;

    db.get_all_products([gender]).then(resp => {
      res.status(200).send(resp);
    });
  },

  getProduct: (req, res) => {
    const db = req.app.get('db');
    const { gender, id } = req.params;

    db.get_product([gender, id]).then(resp => {
      res.status(200).send(resp);
    });
  }
};
