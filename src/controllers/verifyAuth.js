const knex = require("../connection");
const jwt = require("jsonwebtoken");
require("dotenv").config();

async function verifyAuth(req, res, next) {
  const { authorization } = req.headers;

  if (!authorization || authorization === "Bearer")
    return res.status(401).json({ mensagem: "token nao informado" });

  try {
    const token = authorization.replace("Bearer", "").trim();

    const { id } = jwt.verify(token, process.env.DB_SEGREDO);
    const response = await knex("clients").where("id", id);
    if (response.length === 0) {
      return res.status(404).json({ mensagem: "Cliente não encontrado." });
    }

    const { hash_password, ...clientToken } = response;

    req.clientToken = clientToken;

    next();
  } catch (error) {
    return res.status(400).json(error.message);
  }
}
async function verifyToken(req, res) {
  const { bearerToken } = req.body;

  if (!bearerToken || bearerToken === "Bearer") {
    return res.status(401).json({ mensagem: "Token não informado" });
  }
  try {
    const token = bearerToken.replace("Bearer", "").trim();
    const response = jwt.verify(token, process.env.DB_SEGREDO);

    return res.status(200).json(response);
  } catch (error) {
    return res.status(400).json(error.message);
  }
}

module.exports = { verifyAuth, verifyToken };
