const express = require("express");
const app = express();

app.get("/health", (req, res) => res.send("Course Service OK 🚀"));
app.get("/", (req, res) => res.send("Courses API Root"));

// Only start the server when this file is run directly.
if (require.main === module) {
	app.listen(7301, () => console.log("Course Service Running on 7301"));
}

// Export the app for testing
module.exports = app;
