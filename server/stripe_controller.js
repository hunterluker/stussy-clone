require('dotenv').config();
const stripe = require('stripe')(process.env.STRIPE_SECRET);

module.exports = {
    checkout: (req, res) => {
        const { total, token:{id}} = req.body
        stripe.charges.create(
            {
                amount: total,
                currency: "usd",
                source: id,
                description: "Stussy Checkout"
            },
            (err, charge) => {
                if(err) {
                    return res.status(500).send(err)
                } else {
                    return res.status(200).send(charge)
                }
            }
        )
    }
}