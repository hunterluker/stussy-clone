module.exports = {
    getAllProducts: (req, res) => {
        const db = req.app.get('db');

        db.get_all_products().then(resp => {
            console.log(resp)
            res.status(200).send(resp)
        })
    }
}