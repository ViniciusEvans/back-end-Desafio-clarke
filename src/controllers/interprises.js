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
        .limit(4)
        .offset(offset)
        .where("min_demand", ">", Number(energy_demand))
        .orderBy("min_demand", "asc")
        .returning("*");
      console.log(response);
      if (response.length === 0) {
        res
          .status(404)
          .json({ mensagem: "Não há mais empresas em nosso banco de dados" });
      }
      res.status(200).json(response);
    } catch (error) {
      res.status(500).json(error.message);
    }
  },
};

module.exports = interprises;
