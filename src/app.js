const express = require("express");
const compressRoute = require("./routes/compress");

const app = express();

app.use("/compress", compressRoute);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
