const express = require("express");
const clients = require("./controllers/clients");
const interprises = require("./controllers/interprises");
const { verifyAuth, verifyToken } = require("./controllers/verifyAuth");

const routes = express();

routes.post("/login", clients.login);
routes.post("/signup", clients.signup);
routes.post("/verifyToken", verifyToken);
routes.use(verifyAuth);
routes.post("/search", interprises.search);

module.exports = routes;
