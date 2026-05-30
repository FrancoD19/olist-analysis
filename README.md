# Olist E-Commerce Analysis

Análisis exploratorio de datos del e-commerce brasileño Olist utilizando MySQL y Power BI.

## Descripción

Este proyecto analiza más de 100.000 órdenes de compra reales del marketplace Olist Brasil,
con el objetivo de extraer insights de negocio sobre ventas, logística, categorías de productos
y comportamiento de clientes.

## Herramientas utilizadas

- **MySQL / MySQL Workbench** — consultas y análisis exploratorio
- **Power BI Desktop** — dashboard interactivo con KPIs
- **DAX** — medidas y cálculos en Power BI

## Análisis realizados

| Archivo | Descripción |
|---|---|
| `Evolucion_Ventas.sql` | Evolución mensual de ventas |
| `Top10_Ventas.sql` | Top 10 productos/categorías por ventas |
| `promedio_categoria.sql` | Ticket promedio por categoría |
| `Pedidos_Estados.sql` | Distribución de pedidos por estado de Brasil |
| `entregas.sql` | Análisis de tiempos de entrega |

## Dashboard Power BI

El archivo `PowerBI/olist_dashboard.pbix` contiene un dashboard interactivo con:
- KPIs de ventas totales, ticket promedio y cantidad de órdenes
- Evolución temporal de ventas
- Análisis por categoría y región

## Dataset

Dataset público de Olist disponible en [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
