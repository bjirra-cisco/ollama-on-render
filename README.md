# Ollama on Render

This repo deploys the official `ollama/ollama` Docker image to Render as a web service. It auto-pulls the `gemma:2b` model on startup.

## 🔧 Deployment Steps

1. Fork this repo to your GitHub account
2. Go to [https://render.com](https://render.com) and create a **New Web Service**
3. Connect your GitHub, select the repo
4. Render will auto-detect the Dockerfile
5. Set the port to `11434` in Render settings if not auto-detected
6. Click **Deploy**

## 📡 API Usage

Once deployed, access the API at:

```
https://<your-service-name>.onrender.com/api/generate
```

### Example

```bash
curl https://<your-service>.onrender.com/api/generate \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{
    "model": "gemma:2b",
    "prompt": "Explain LLMs like I'm 10"
}'
```

## ⚠️ Notes

- Models are pulled fresh on each container start.
- Use Render Disks (paid) for persistent storage.
