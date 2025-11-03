const express = require("express");
const app = express();

app.get("/health", (req, res) => res.send("Enroll Service OK ✅"));
app.get("/", (req, res) => res.send("Enroll API Root"));

app.listen(7302, () => console.log("Enroll Service Running on 7302"));
