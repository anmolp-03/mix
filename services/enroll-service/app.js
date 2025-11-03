const express = require("express");
const app = express();

app.get("/health", (req, res) => res.send("Enroll Service OK ✅"));
app.get("/", (req, res) => res.send("Enroll API Root"));

// Only start the server when this file is run directly.
if (require.main === module) {
	app.listen(7302, () => console.log("Enroll Service Running on 7302"));
}

// Export the app for testing
module.exports = app;
