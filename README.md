# Urbanización Gilberto Aurich Bonilla — Landing

Sitio web (landing) para venta de lotes en Lambayeque, frente a la Panamericana Norte.
Carpeta autocontenida: todo lo necesario está aquí.

## 📁 Estructura

```
urbanizacion-aurich-bonilla/
├── index.html                 ← LA WEB (un solo archivo, edítalo aquí)
├── serve.sh                   ← levanta el servidor local (ver abajo)
├── README.md                  ← este archivo
├── assets/                    ← imágenes y logos que usa la web
│   ├── emo-familia-hero.jpg   ← hero (familia)
│   ├── emo-ninos-bici.jpg     ← sección "tu familia vive mejor"
│   ├── emo-pareja.jpg         ← galería futuro
│   ├── emo-llaves.jpg         ← cierre emocional  (⚠ regenerar: tiene cartel ajeno)
│   ├── ubicacion-aerea.jpg    ← mapa aéreo con pin (sección ubicación)
│   ├── parques-construidos.jpg / zona-gimnasio.jpg / vista-colegio.jpg / sodimac.jpg
│   ├── render-casas.jpg / render-alameda.jpg   ← renders 3D del proyecto
│   ├── logo-horizontal.svg        ← logo fondo claro
│   ├── logo-horizontal-blanco.svg ← logo fondo oscuro (carteles/ads)
│   └── logo-isotipo.svg           ← símbolo solo (favicon/redes)
└── insumos/                   ← MATERIA PRIMA original (no la usa la web directo)
    ├── videos/
    │   ├── video-terreno-drone.mp4   ← dron del terreno ya construido (88s)
    │   ├── render-recorrido.mp4      ← recorrido 3D
    │   └── ubicacion-vertical.mp4    ← mapa/ubicación vertical (reels)
    └── originales/
        └── aerea-pin-original.jpeg
```

## ▶️ Ver la web en el navegador / celular

Opción rápida (doble clic): abre `index.html`.

Servidor local (para verlo también en el celular con el mismo WiFi):
```bash
cd ~/Desktop/urbanizacion-aurich-bonilla
./serve.sh
```
Luego abre en el navegador:  http://localhost:8000
En el celular (mismo WiFi):  http://TU_IP_LOCAL:8000   (el script imprime la IP)
Para detenerlo: Ctrl + C.

## ✏️ Qué falta reemplazar antes de publicar

Busca y reemplaza dentro de `index.html`:

| Buscar            | Reemplazar por |
|-------------------|----------------|
| `51900000000`     | Número real de WhatsApp (formato 51 + 9 dígitos) |
| `S/ XX`           | Precios reales (cuota mensual, inicial, contado) |
| `XX m²` / `XX meses` | Metraje y plazo reales |
| `[Razón Social S.A.C.]` | Razón social de la empresa |
| `RUC 20XXXXXXXXX` | RUC real |
| `maps.google.com` / `waze.com` | Links reales de ubicación |
| `ventas@aurichbonilla.pe` | Email real |
| `+51 9XX XXX XXX` | Teléfono visible real |

Reemplazo rápido de WhatsApp desde terminal (ejemplo):
```bash
sed -i '' 's/51900000000/51987654321/g' index.html
```

Pendiente extra: instalar el **pixel de Meta** en el `<head>` antes de pautar,
y configurar el **Libro de Reclamaciones** (link en el footer).

## 🎨 Marca

- Azul: `#0a5dc2`  ·  Dorado: `#d29a2e`
- Fuentes: Cormorant Garamond (titular del logo) + Jost (textos del logo). El cuerpo usa Segoe UI/system.

## 🚀 Publicar (link público para WhatsApp)

Es un sitio estático: súbelo tal cual a Netlify, Vercel o GitHub Pages.
Ejemplo Netlify (drag & drop): arrastra esta carpeta a https://app.netlify.com/drop
