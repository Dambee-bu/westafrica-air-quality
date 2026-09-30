CREATE TABLE IF NOT EXISTS locations (
    location_id SERIAL PRIMARY KEY,
    city        TEXT NOT NULL,
    country     TEXT NOT NULL,
    latitude    NUMERIC(8,4) NOT NULL,
    longitude   NUMERIC(8,4) NOT NULL,
    UNIQUE (city, country)
);

CREATE TABLE IF NOT EXISTS air_quality_hourly (
    location_id           INT NOT NULL REFERENCES locations(location_id),
    observed_at           TIMESTAMPTZ NOT NULL,
    pm2_5                 NUMERIC,
    pm10                  NUMERIC,
    carbon_monoxide       NUMERIC,
    temperature_c         NUMERIC,
    relative_humidity_pct NUMERIC,
    wind_speed_kmh        NUMERIC,
    source_file           TEXT NOT NULL,
    loaded_at             TIMESTAMPTZ NOT NULL DEFAULT now(),
    PRIMARY KEY (location_id, observed_at)
);

CREATE TABLE IF NOT EXISTS pipeline_runs (
    run_id        SERIAL PRIMARY KEY,
    started_at    TIMESTAMPTZ NOT NULL,
    finished_at   TIMESTAMPTZ,
    status        TEXT NOT NULL,
    rows_loaded   INT,
    error_message TEXT
);