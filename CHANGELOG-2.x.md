# Changelog for version 2.x

**Version 2.0.6**

- Add 8146 Cessna aircraft.
- Add 180 aircraft pictures.

**Version 2.0.5**

- Add 958 Cessna aircraft.
- Add 1 navaid.
- Add 3058 airport statistic datasets for year 2020.
- Fix 3 Cessna aircraft types names.
- Fix navaids incorrectly marked as DME-ILS instead of terminal, non-paired DMEs.

**Version 2.0.4**

- Fix broken CSV.

**Version 2.0.3**

- Add 6141 Cessna aircraft.
- Add 197 Czech Sport Aircraft aircraft.
- Fix aircraft type CRUZ manufacturer name.
- Fix aircraft type T50 name.

**Version 2.0.2**

- Add 6174 Beechcraft aircraft.
- Add 4 Nextant Aerospace aircraft.
- Add Nextant Aerospace 400XT (BE4W) aircraft type.
- Fix 5 Beechcraft aircraft types names.

**Version 2.0.1**

- Add 40 Airbus aircraft.
- Add 3 ATR aircraft.
- Add 205 Boeing aircraft.
- Add 32 Bombardier aircraft.
- Add 500 Embraer aircraft.
- Add 209 Fairchild aircraft.
- Add 237 General Dynamics aircraft.
- Add 433 Grumman American aircraft.
- Add 338 aircraft pictures.
- Add 8 airlines.
- Replace the old Berlin-Schönefeld (EDDB/SXF) airport with the new Berlin-Brandenburg (EDDB/BER) airport.
- Fix the aircraft type E50P name.

**Version 2.0.0**

- Fix ICAO aircraft type code for AgustaWestland AW119 family aircraft.
- Add missing ICAO aircraft type code for aircraft ad5f08.
- Add *slug* column to `navaids.csv` file.
- Add `fixes.csv` file with 220,347 fixes/waypoints.
- Don't quote values unless necessary.

**BC breaking changes:**

- Convert all pictures to WebP format.
- Use empty columns instead of `NULL` keywords to represent null values.
- Use semicolons as multiple values (array) separators.
- Add `airline_logos.csv` to reference airlines logos.
- Rename multiple files to keep a logical sort order.
- Delete unused `airport_pictures.csv` file.
- Rename *airline* column to *operator* to reflect real column usage in `aircraft.csv` and `aircraft/*.csv` files
- Rename *maximum_fuel_capacity* column to *fuel_capacity* in `aircraft_type.csv`.
- Rename *maximum_landing_weight* column to *mlw* in `aircraft_type.csv`.
- Rename *maximum_ramp_weight* column to *mrw* in `aircraft_type.csv`.
- Rename *maximum_takeoff_weight* column to *mtow* in `aircraft_type.csv`.
- Rename *maximum_zero_fuel_weight* column to *mzfw* in `aircraft_type.csv`.
- Rename *range* column to *operating_range* in `aircraft_type.csv`.
- Rename *fleet_age* column to *average_fleet_age* in `airlines.csv`.
- Rename *loc_heading* column to *localizer_heading* in `navaids.csv`.
- Rename *gs_angle* column to *glide_slope_angle* in `navaids.csv`.
- Delete unused *aircraft* column in `airlines.csv`.
- Delete unused *aircraft_models* column in `airlines.csv`.
- Delete unused *connections* column in `airlines.csv`.
- Delete unused *routes* column in `airlines.csv`.
- Delete unused *proc_runways* column in `airports.csv`.
