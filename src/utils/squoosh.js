const { exec } = require("child_process");

function compressImage(inputPath, outputPath) {
  return new Promise((resolve, reject) => {
    // Example: compress to JPEG with quality 75
    const cmd = `npx squoosh-cli --mozjpeg '{quality:75}' -d ${outputPath.replace(
      /[^/\\]+$/,
      ""
    )} ${inputPath}`;
    exec(cmd, (error, stdout, stderr) => {
      if (error) return reject(error);
      // squoosh-cli outputs to the same directory with .jpg extension
      // Rename output to match outputPath if needed
      resolve();
    });
  });
}

module.exports = { compressImage };
