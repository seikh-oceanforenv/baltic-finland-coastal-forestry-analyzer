# 📊 Baltic-Finland Coastal Forestry Risk Analyzer

A high-performance **Geospatial Data Science** and spatial database project designed to assess climate-change-driven coastal erosion and environmental risks affecting commercial forestry in the Joensuu region, Finland.

---

## 🌍 Project Overview
Coastal forestry in Finland is highly sensitive to maritime changes, sea-level rise, and storm surges. This project transitions traditional file-based GIS workflows into an enterprise-grade **PostgreSQL/PostGIS Spatial Database Architecture**. It automates the detection of legally protected ecological buffer zones and calculates precise tree density and geometric centers (centroids) for optimal monitoring drone placements.

---

## 🛠️ Technology Stack & Core Tools
*   **Database Engine:** PostgreSQL (v17)
*   **Spatial Extension:** PostGIS (v3.5.3) & PostGIS Raster
*   **GIS Software:** QGIS Desktop (For spatial database connection & vector visualization)
*   **Projection System:** `SRID 3067` (ETRS89 / TM35FIN - Finland National Grid Reference System)

---

## 📐 Implemented Spatial SQL Operations (Core Logic)
The backend architecture is built upon automated spatial logic using industry-standard PostGIS functions:

1.  **`ST_Distance` (Proximity Analytics):** Calculated the exact Euclidean distance (in meters) from the official Finnish coastal dataset (`ranta10meret`) to the commercial forest inventory nodes.
2.  **`ST_Buffer` (Ecological Zoning):** Automated the creation of a strict 500-meter environmental protection polygon (safety envelope) surrounding vulnerable shorelines.
3.  **`ST_Within` & `ST_Intersects` (Topology Validation):** Implemented boolean spatial triggers to instantly flag forest zones that fall inside the restricted legal protection boundaries.
4.  **`ST_Centroid` (Geometric Modeling):** Calculated the exact mathematical center of mass for high-risk zones to serve as strategic coordinates for climate-monitoring stations.
5.  **`Spatial Join (ON ST_Intersects)`:** Combined multi-table vector datasets purely based on geographic interaction without requiring traditional numeric IDs.

---

## 📊 Database Architecture & Sample Output
The analytical pipeline automatically populates a centralized tracking table (`coastal_forestry_risk_matrix`) with the following validated schema:

| risk_id | zone_name | measured_distance_meters | is_legally_protected | analysis_date | center_point_text |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **1** | Joensuu Coast Sector 1 | 353.55 m | **True** | 2026-09-23 | `POINT(641000 6941000)` |
