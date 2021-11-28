module.exports = {
  HOST: "REPLACE_ME_HOST",
  USER: "REPLACE_ME_USER",
  PASSWORD: "REPLACE_ME_PASSWORD",
  DB: "REPLACE_ME_DB",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};

