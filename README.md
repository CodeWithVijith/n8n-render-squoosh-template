# Image Compression Service

This project is a simple image compression service built using Node.js and Express. It utilizes the `squoosh-cli` to compress images uploaded via an API endpoint.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [API](#api)
- [License](#license)

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/image-compression-service.git
   ```

2. Navigate to the project directory:
   ```
   cd image-compression-service
   ```

3. Install the dependencies:
   ```
   npm install
   ```

## Usage

To start the server, run the following command:
```
npm start
```

The server will start on `http://localhost:3000`.

## API

### POST /compress

This endpoint allows you to upload an image for compression.

#### Request

- **Content-Type**: `multipart/form-data`
- **Body**: An image file (e.g., `.jpg`, `.png`)

#### Response

- **200 OK**: Returns the compressed image.
- **400 Bad Request**: If the uploaded file is not an image.

#### Example

```bash
curl -X POST http://localhost:3000/compress -F "image=@path/to/image.jpg"
```

## License

This project is licensed under the MIT License.