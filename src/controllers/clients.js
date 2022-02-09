const knex = require("../connection");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
require("dotenv").config();

const clients = {
  login: async (req, res) => {
    const { email, password } = req.body;

    if (!email || !password) {
      return res
        .status(404)
        .json({ mensagem: "Email e senha são obrigatórios!" });
    }

    try {
      const response = await knex("clients").where({ email: email });

      if (response.length === 0)
        return res.status(400).json({ mensagem: "Usuario não encontrado!" });

      const client = response[0];

      const verifiedPassword = await bcrypt.compare(
        password,
        client.hash_password
      );

      if (!verifiedPassword) {
        return res
          .status(404)
          .json({ mensagem: "Email ou senha não existem!" });
      }

      const token = jwt.sign({ id: client.id }, process.env.DB_SEGREDO, {
        expiresIn: "1h",
      });

      const { hash_password: clientPassword, ...clientsData } = client;
      return res.status(200).json({
        clients: clientsData,
        token,
      });
    } catch (error) {
      return res.status(400).json(error.message);
    }
  },
  signup: async (req, res) => {
    const { name, email, password } = req.body;

    if (!name) {
      return res.status(404).json({ mensagem: "O campo nome é obrigatório!" });
    }
    if (!email) {
      return res.status(404).json({ mensagem: "O campo email é obrigatório!" });
    }
    if (!password) {
      return res.status(404).json({ mensagem: "O campo senha é obrigatório!" });
    }

    try {
      const response = await knex("clients").where("email", email);
      if (response.length > 0) {
        return res.status(400).json({ mensagem: "O email já existe!" });
      }

      const hashPassword = await bcrypt.hash(password.toString(), 10);
      const signupClient = await knex("clients").insert({
        name,
        email,
        hash_password: hashPassword,
      });
      if (signupClient.rowCount === 0)
        return res
          .status(400)
          .json({ mensagem: "Não foi possível cadastrar cliente" });

      return res
        .status(200)
        .json({ mensagem: "Usuário cadastrado com sucesso!" });
    } catch (error) {
      return res.status(404).json(error.message);
    }
  },
};

module.exports = clients;
