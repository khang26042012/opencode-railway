# OpenCode on Railway

Triển khai **OpenCode** (AI Coding Agent mã nguồn mở) lên **Railway** với giao diện Web UI và bảo vệ bằng mật khẩu.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com)

---

## 🚀 Tính năng

- **OpenCode Web UI:** Truy cập và lập trình cùng AI agent trực tiếp từ trình duyệt trên mọi thiết bị.
- **Docker-ready:** Đã cấu hình sẵn Dockerfile tối ưu trên Node 22 slim, tích hợp Git, Python, cURL.
- **Bảo mật:** Hỗ trợ mật khẩu truy cập Web UI qua biến môi trường `OPENCODE_SERVER_PASSWORD`.
- **Hỗ trợ đa mô hình:** Tích hợp trực tiếp các API key như Claude (Anthropic), OpenAI (GPT-4o), Google Gemini, DeepSeek, OpenRouter, v.v.
- **Persistent Storage:** Hỗ trợ gắn Railway Volume vào thư mục `/data` để lưu trữ codebase và lịch sử session bền vững.

---

## ⚙️ Biến môi trường (Environment Variables)

| Tên biến | Bắt buộc | Mô tả |
| :--- | :---: | :--- |
| `OPENCODE_SERVER_PASSWORD` | Khuyên dùng | Mật khẩu truy cập Web UI (Tên đăng nhập mặc định: `opencode`) |
| `ANTHROPIC_API_KEY` | Tùy chọn | API Key cho Claude 3.5 / 3.7 Sonnet |
| `OPENAI_API_KEY` | Tùy chọn | API Key cho OpenAI GPT-4o / o1 |
| `GEMINI_API_KEY` | Tùy chọn | API Key cho Google Gemini |
| `DEEPSEEK_API_KEY` | Tùy chọn | API Key cho DeepSeek V3 / R1 |
| `OPENROUTER_API_KEY` | Tùy chọn | API Key cho OpenRouter (truy cập hàng trăm model) |

---

## 📖 Hướng dẫn sử dụng sau khi Deploy

1. Sau khi deploy thành công trên Railway, vào tab **Settings** của Service, tại mục **Networking** nhấn **Generate Domain** để lấy URL công khai.
2. Mở URL trên trình duyệt:
   - **Username:** `opencode` (hoặc giá trị trong `OPENCODE_SERVER_USERNAME`)
   - **Password:** Mật khẩu bạn đã đặt trong biến `OPENCODE_SERVER_PASSWORD`
3. (Tùy chọn) Gắn **Persistent Volume** vào mount path `/data` trong tab **Volumes** để lưu lại toàn bộ code và session khi container khởi động lại.
