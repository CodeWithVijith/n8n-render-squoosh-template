const express = require("express");
const multer = require("multer");
const path = require("path");
const fs = require("fs");
const { compressImage } = require("../utils/squoosh");

const router = express.Router();
const upload = multer({ dest: "uploads/" });

router.post("/", upload.single("image"), async (req, res) => {
  if (!req.file) {
    return res.status(400).json({ error: "No image uploaded" });
  }

  try {
    const inputPath = req.file.path;
    const outputPath = inputPath + "-compressed.jpg";

    await compressImage(inputPath, outputPath);

    res.sendFile(path.resolve(outputPath), {}, (err) => {
      fs.unlinkSync(inputPath);
      fs.unlinkSync(outputPath);
    });
  } catch (err) {
    res.status(500).json({ error: "Compression failed", details: err.message });
  }
});

module.exports = router;
