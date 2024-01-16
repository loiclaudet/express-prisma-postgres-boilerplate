import * as dotenv from "dotenv";
dotenv.config();

import app from "~/server";

const port = process.env.PORT || 2187;

app.get("/", (_, res) => {
  res.json({ message: "hello from express!" });
});

app.listen(port, () => {
  console.log(`Listening on port ${port}...`);
});
