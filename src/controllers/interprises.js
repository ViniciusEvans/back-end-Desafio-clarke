const knex = require("../connection");

const interprises = {
  search: async (req, res) => {
    const { energy_demand, offset } = req.body;
    if (!energy_demand) {
      return res
        .status(400)
        .json({ mensagem: "É necessário a demanda de energia." });
    }

    try {
      const response = await knex("interprises")
        .limit(5)
        .offset(offset)
        .where("min_demand", ">", Number(energy_demand))
        .orderBy("min_demand", "asc")
        .returning("*");
      console.log(response);
      res.status(200).json(response);
    } catch (error) {
      res.status(500).json(error.message);
    }
  },
};

module.exports = interprises;
