module.exports = {
  getAllProducts: (req, res) => {
    const db = req.app.get('db');

    db.get_all_products().then(resp => {
      res.status(200).send(resp);
    });
  },

  getAllProductsByGender: (req, res) => {
    const db = req.app.get('db');
    const { gender } = req.params;
    const { category } = req.query;

    if (!category) {
      db.get_all_products_by_gender([gender]).then(resp => {
        res.status(200).send(resp);
      });
    } else {
      db.get_all_products_by_category([gender, category]).then(resp => {
        res.status(200).send(resp);
      });
    }
  },

  getProduct: (req, res) => {
    const db = req.app.get('db');
    const { gender, id } = req.params;

    db.get_product([gender, id]).then(resp => {
      res.status(200).send(resp);
    });
  }
};
