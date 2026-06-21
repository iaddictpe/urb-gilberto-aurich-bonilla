#!/bin/bash
# Levanta un servidor local para ver la web en navegador y celular (mismo WiFi).
# Uso:  ./serve.sh   (Ctrl+C para detener)
cd "$(dirname "$0")"
PORT=8000
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "TU_IP")
echo ""
echo "  Urbanización Aurich Bonilla — servidor local"
echo "  ---------------------------------------------"
echo "  En esta compu:     http://localhost:$PORT"
echo "  En el celular:     http://$IP:$PORT   (mismo WiFi)"
echo "  Detener:           Ctrl + C"
echo ""
python3 -m http.server "$PORT" --bind 0.0.0.0
