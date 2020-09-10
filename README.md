<div style="text-align:center"><img src="logo.png" alt=""></div>



# What is flying? Database

[![GitHub license](https://img.shields.io/github/license/jbroutier/whatisflying-db)](https://github.com/jbroutier/whatisflying-db/blob/master/LICENSE) [![GitHub release](https://img.shields.io/github/release/jbroutier/whatisflying-db)](https://github.com/jbroutier/whatisflying-db/releases/) [![Website whatisflying.com](https://img.shields.io/website?url=https%3A%2F%2Fwhatisflying.com)](https://whatisflying.com/)

This repository contains the database for [https://whatisflying.com](https://whatisflying.com), a real time aircraft tracker & aeronautical database.

## Statistics

- 34,000+ aircraft.
- 500+ aircraft types.
- 1,900+ airlines.
- 10,000+ airports.
- 8,600+ airport runways.
- 18,700+ airport radio frequencies.
- 50,000+ airport statistic datasets.
- 20,000+ navaids.

## Database structure

The database consists of the following datasets:

### Aircraft

This dataset includes the following files:

#### aircraft.csv

This file contains informations on aircraft. Only aircraft of manufacturers for which there are very few aircraft are placed in this file. See the table below for the structure of this file.

#### aircraft/*manufacturer*.csv

These files contains informations on aircraft, for a single manufacturer. The structure of these files is as follows:

| Column             |     Type     | Description                                                  |       Example       |
| ------------------ | :----------: | ------------------------------------------------------------ | :-----------------: |
| icao_24bit_address |    string    | The ICAO 24-bit address of the aircraft.                     |       38fcbb        |
| registration       |    string    | The registration of the aircraft.                            |       F-GXLG        |
| manufacturer       |    string    | The manufacturer of the aircraft.                            |       Airbus        |
| model              |    string    | The model of the aircraft.                                   | A330-743L Beluga XL |
| aircraft_type      |    string    | The type of the aircraft, as an ICAO code.                   |        A337         |
| serial_number      |    string    | The manufacturer serial number of the aircraft.              |        1824         |
| description        |    string    | The description of the aircraft, as defined in the ICAO Document 8643. |         L2J         |
| airline            | string\|null | The airline which operates the aircraft, as an ICAO code, or null if undefined. |         AIB         |
| registered_at      | string\|null | The registration date of the aircraft, or null if undefined. |     2020-01-01      |
| registered_until   | string\|null | The expiration date of the aircraft registration, or null if undefined. |     2022-12-31      |
| manufactured_at    | string\|null | The manufacturing date of the aircraft, or null if undefined. |     2019-12-31      |

#### aircraft_pictures.csv

This file contains the list of photographs of aircraft as well as information on the author and the license issued by the latter. The structure of this file is as follows:

| Column         |  Type  | Description                                                  |                      Example                      |
| -------------- | :----: | ------------------------------------------------------------ | :-----------------------------------------------: |
| aircraft       | string | The ICAO 24-bit address of the aircraft.                     |                      3944e6                       |
| picture        | string | The relative path to the picture.                            |           aircraft_pictures/3944e6.jpg            |
| source         | string | The source of the picture.                                   | https://www.flickr.com/photos/johndoe/1234567890/ |
| author_name    | string | The name of the picture author.                              |                     John Doe                      |
| author_profile | string | The URL of the picture author's profile.                     |      https://www.flickr.com/photos/johndoe/       |
| license        | string | The license of the picture, as an SPDX license identifier. See [https://spdx.org/licenses/](https://spdx.org/licenses/) for a list of valid identifiers. |                   CC-BY-SA-2.0                    |

------

### Aircraft types

This dataset includes the following files:

#### aircraft_types.csv

This file contains information on aircraft types. The structure of this file is as follows:

| Column                   |     Type      | Description                                                  |  Example  |
| ------------------------ | :-----------: | ------------------------------------------------------------ | :-------: |
| icao_code                |    string     | The ICAO code of the aircraft type.                          |   A35K    |
| iata_code                | string\|null  | The IATA code of the aircraft type, or null if undefined.    |    351    |
| description              |    string     | The description of the aircraft, as defined in the ICAO Document 8643. |    L2J    |
| manufacturer             |    string     | The manufacturer of the aircraft.                            |  Airbus   |
| name                     |    string     | The name of the aircraft type.                               | A350-1000 |
| wtc                      |    string     | The wake turbulence category of the aircraft, as defined in the ICAO Document 8643. |     H     |
| absolute_ceiling         | integer\|null | The absolute ceiling of the aircraft, in feet, or null if undefined. |   41450   |
| approach_speed           | integer\|null | The approach speed of the aircraft, in knots, or null if undefined. |    142    |
| cruise_speed             | integer\|null | The cruise speed of the aircraft, in knots, or null if undefined. |    500    |
| fuselage_height          |  float\|null  | The height of the aircraft fuselage, in metres, or null if undefined. |   NULL    |
| fuselage_width           |  float\|null  | The width of the aircraft fuselage, in metres, or null if undefined. |   5.96    |
| height                   |  float\|null  | The height of the aircraft, in metres, or null if undefined. |   16.9    |
| length                   |  float\|null  | The length of the aircraft, in metres, or null if undefined. |   73.78   |
| main_rotor_area          |  float\|null  | The area of the aircraft main rotor, in square metres, or null if undefined. |   NULL    |
| main_rotor_diameter      |  float\|null  | The diameter of the aircraft main rotor, in metres, or null if undefined. |   NULL    |
| maximum_fuel_capacity    | integer\|null | The maximum fuel capacity of the aircraft, in litres, or null if undefined. |  158791   |
| maximum_landing_weight   | integer\|null | The maximum landing weight of the aircraft, in kilograms, or null if undefined. |  236000   |
| maximum_ramp_weight      | integer\|null | The maximum ramp weight of the aircraft, in kilograms, or null if undefined. |   NULL    |
| maximum_speed            | integer\|null | The maximum speed of the aircraft, in knots, or null if undefined. |    520    |
| maximum_takeoff_weight   | integer\|null | The maximum takeoff weight of the aircraft, in kilograms, or null if undefined. |  316000   |
| maximum_zero_fuel_weight | integer\|null | The maximum zero-fuel weight of the aircraft, in kilograms, or null if undefined. |  220000   |
| range                    | integer\|null | The range of the aircraft, in nautical miles, or null if undefined. |   16100   |
| service_ceiling          | integer\|null | The service ceiling of the aircraft, in feet, or null if undefined. |   35000   |
| type_certificate         | string\|null  | The URI of the aircraft type certificate, or null if undefined. |   NULL    |
| wing_area                |  float\|null  | The wing area of the aircraft, in square metres, or null if undefined. |   464.3   |
| wingspan                 |  float\|null  | The wingspan of the aircraft, in metres, or null if undefined. |   64.75   |

#### aircraft_type_pictures.csv

This file contains the list of photographs of aircraft types as well as information on the author and the license issued by the latter. The structure of this file is as follows:

| Column        |  Type  | Description                                                  |             Example             |
| ------------- | :----: | ------------------------------------------------------------ | :-----------------------------: |
| aircraft_type | string | The ICAO code of the aircraft type.                          |              A21N               |
| picture        | string | The relative path to the picture.                            |           aircraft_type_pictures/A21N.jpg            |
| source         | string | The source of the picture.                                   | https://www.flickr.com/photos/johndoe/1234567890/ |
| author_name    | string | The name of the picture author.                              |                     John Doe                      |
| author_profile | string | The URL of the picture author's profile.                     |      https://www.flickr.com/photos/johndoe/       |
| license        | string | The license of the picture, as an SPDX license identifier. See [https://spdx.org/licenses/](https://spdx.org/licenses/) for a list of valid identifiers. |                   CC-BY-SA-2.0                    |

#### aircraft_models.csv

This file contains information on aircraft models. The structure of this file is as follows:

| Column              |     Type     | Description                                                  |      Example      |
| ------------------- | :----------: | ------------------------------------------------------------ | :---------------: |
| aircraft_type       |    string    | The aircraft type to which the aircraft model belongs, as an ICAO code. |       A19N        |
| name                |    string    | The name of the aircraft model.                              |     A319-151N     |
| engine_manufacturer |    string    | The manufacturer of the aircraft engines.                    | CFM International |
| engine_model        |    string    | The model of the aircraft engines.                           |     LEAP-1A24     |
| certified_at        | string\|null | The certification date of the aircraft model, or null if undefined. |    2019-08-19     |

------

### Airlines

This dataset includes the following files:

#### airlines.csv

This file contains information on airlines. The structure of this file is as follows:

| Column                       |     Type      | Description                                                  |  Example   |
| ---------------------------- | :-----------: | ------------------------------------------------------------ | :--------: |
| icao_code                    |    string     | The ICAO code of the airline.                                |    AFR     |
| iata_code                    | string\|null  | The IATA code of the airline, or null if undefined.          |     AF     |
| name                         |    string     | The name of the airline.                                     | Air France |
| callsign                     | string\|null  | The callsign of the airline, or null if undefined.           |  AIRFRANS  |
| country                      |    string     | The country where the airline operate, as an ISO 3166-1 alpha-2 code. |     FR     |
| active                       |    boolean    | Whether the airline is active.                               |     1      |
| iata_member                  |    boolean    | Whether the airline is member of the IATA.                   |     1      |
| iosa_certified               |    boolean    | Whether the airline is IOSA certified.                       |     1      |
| international                |    boolean    | Whether the airline operates international flights.          |     1      |
| fleet_age                    |  float\|null  | The average age of the airline fleet, or null if undefined.  |   10.84    |
| aircraft                     | integer\|null | The number of aircraft within the airline fleet.             |     37     |
| aircraft_models              | integer\|null | The number of different aircraft models within the airline fleet. |     5      |
| aircraft_over_25_years       | integer\|null | The number of aircraft over 25 years old within the airline fleet, or null if undefined. |     0      |
| routes                       | integer\|null | The number of routes between airports flown by the airline.  |    492     |
| connections                  | integer\|null | The number of connections between airports made by the airline. |    277     |
| destinations                 | integer\|null | The number of destinations serviced by the airline, or null if undefined. |    178     |
| annual_domestic_flights      | integer\|null | The number of domestic flights operated annualy by the airline, or null if undefined. |   96789    |
| annual_international_flights | integer\|null | The number of international flights operated annualy by the airline, or null if undefined. |   171510   |
| accidents_last_5_years       | integer\|null | The number of accidents involving the airline during the last 5 years, or null if undefined. |     7      |
| fatal_accidents_last_5_years | integer\|null | The number of fatal accidents involving the airline during the last 5 years, or null if undefined. |     0      |

#### airline_pictures.csv

This file contains the list of photographs of aircraft wearing the livery of airlines as well as information on the author and the license issued by the latter. The structure of this file is as follows:

| Column  |  Type  | Description                                                  |         Example          |
| ------- | :----: | ------------------------------------------------------------ | :----------------------: |
| airline | string | The ICAO code of the airline.                                |           AFR            |
| picture        | string | The relative path to the picture.                            |           airline_pictures/AFR.jpg            |
| source         | string | The source of the picture.                                   | https://www.flickr.com/photos/johndoe/1234567890/ |
| author_name    | string | The name of the picture author.                              |                     John Doe                      |
| author_profile | string | The URL of the picture author's profile.                     |      https://www.flickr.com/photos/johndoe/       |
| license        | string | The license of the picture, as an SPDX license identifier. See [https://spdx.org/licenses/](https://spdx.org/licenses/) for a list of valid identifiers. |                   CC-BY-SA-2.0                    |

------

### Airports

This dataset includes the following files:

#### airports.csv

This file contains information on airports. The structure of this file is as follows:

| Column        |     Type      | Description                                                  |         Example          |
| ------------- | :-----------: | ------------------------------------------------------------ | :----------------------: |
| icao_code     |    string     | The ICAO code of the airport.                                |           LFBO           |
| iata_code     |    string     | The IATA code of the airport, or null if undefined.          |           TLS            |
| name          |    string     | The name of the airport.                                     | Toulouse-Blagnac Airport |
| type          |    string     | The type of the airport ¹.                                   |          large           |
| latitude      |     float     | The latitude of the airport, in degrees.                     |          43.635          |
| longitude     |     float     | The longitude of the airport, in degrees.                    |         1.36778          |
| elevation     | integer\|null | The elevation of the airport, in feet above mean sea level, or null if undefined. |           482            |
| fir           |    string     | The flight information region to which the airport belongs, as an ICAO code. |           LFBB           |
| continent     |    string     | The continent where the airport is located, as a 2 letter continent code. |            EU            |
| country       |    string     | The country where the airport is located, as an ISO 3166-1 alpha-2 code. |            FR            |
| proc_runways  |    integer    | The number of runways with standard approach procedures.     |            4             |
| active        |    boolean    | Whether the airport is active (in service).                  |            1             |
| international |    boolean    | Whether the airport is international.                        |            1             |

¹ Can take one of the following values: *small* (airstrip), *medium* (air base or local airport) and *large* (international airport).

#### airport_frequencies.csv

This file contains information on radio frequencies used at airports. The structure of this file is as follows:

| Column      |  Type  | Description                                                  |    Example    |
| ----------- | :----: | ------------------------------------------------------------ | :-----------: |
| airport     | string | The airport to which the radio frequency belongs, as an ICAO code. |     LFBO      |
| description | string | The description of the radio frequency.                      | TOULOUSE INFO |
| frequency   | float  | The actual frequency of the radio frequency, in megahertz.   |    121.25     |
| type        | string | The type of the radio frequency ¹.                           |     AFIS      |

¹ Commonly used values: *AFIS*, *ATIS*, *APP* (approach), *DEP* (departure), *GND* (ground), *TWR* (tower),  *PFLT* (preflight),...

#### airport_runways.csv

This file contains informations on airport runways. The structure of this file is as follows:

| Column       |     Type      | Description                                                  | Example |
| ------------ | :-----------: | ------------------------------------------------------------ | :-----: |
| airport      |    string     | The airport to which the runway belongs, as an ICAO code.    |  LFBO   |
| length       |    integer    | The length of the runway, in feet.                           |  9843   |
| width        |    integer    | The width of the runway, in feet.                            |   148   |
| le_name      |    string     | The name of the runway lower end.                            |   14L   |
| le_latitude  |     float     | The latitude of the runway lower end, in degrees.            | 43.6374 |
| le_longitude |     float     | The longitude of the runway lower end, in degrees.           | 1.35762 |
| le_elevation | integer\|null | The elevation of the runway lower end, in feet above mean sea level, or null if undefined. |   490   |
| le_heading   |  float\|null  | The magnetic heading of the runway lower end, in degrees, or null if undefined. |   143   |
| le_dthr      | integer\|null | The length of the runway lower end displaced threshold, in feet, or null if undefined. |  NULL   |
| he_name      |    string     | The name of the runway higher end.                           |   32R   |
| he_latitude  |     float     | The latitude of the runway higher end, in degrees.           | 43.6156 |
| he_longitude |     float     | The longitude of the runway higher end, in degrees.          | 1.38022 |
| he_elevation | integer\|null | The elevation of the runway higher end, in metres above mean sea level, or null if undefined. |   497   |
| he_heading   |  float\|null  | The magnetic heading of the runway higher end, in degrees, or null if undefined. |   323   |
| he_dthr      | integer\|null | The length of the runway higher end displaced threshold, in feet, or null if undefined. |  NULL   |
| surface      | string\|null  | The runway surface type code, or null if undefined.          |   CON   |
| lighted      |    boolean    | Whether the runway is lighted.                               |    1    |
| active       |    boolean    | Whether the runway is active (in service).                   |    1    |

#### airport_statistics.csv

This file contains statistics about airports. The structure of this file is as follows:

| Column                     |  Type   | Description                                                  | Example |
| -------------------------- | :-----: | ------------------------------------------------------------ | :-----: |
| airport                    | string  | The airport to which the statistic dataset apply, as an ICAO code. |  LFBO   |
| year                       | integer | The year for which the statistic dataset apply.              |  2019   |
| domestic_departures        | integer | The number of domestic flights that departed from the airport. |  20206  |
| international_departures   | integer | The number of international flights that departed from the airport. |  18380  |
| domestic_destinations      | integer | The number of domestic destinations serviced by the airport. |   48    |
| international_destinations | integer | The number of international destinations serviced by the airport. |   99    |

#### airport_pictures.csv

This file contains the list of photographs of airports as well as information on the author and the license issued by the latter. The structure of this file is as follows:

| Column  |  Type  | Description                                                  |          Example          |
| ------- | :----: | ------------------------------------------------------------ | :-----------------------: |
| airport | string | The ICAO code of the airport.                                |           LFBO            |
| picture        | string | The relative path to the picture.                            |           airport_pictures/LFBO.jpg            |
| source         | string | The source of the picture.                                   | https://www.flickr.com/photos/johndoe/1234567890/ |
| author_name    | string | The name of the picture author.                              |                     John Doe                      |
| author_profile | string | The URL of the picture author's profile.                     |      https://www.flickr.com/photos/johndoe/       |
| license        | string | The license of the picture, as an SPDX license identifier. See [https://spdx.org/licenses/](https://spdx.org/licenses/) for a list of valid identifiers. |                   CC-BY-SA-2.0                    |

------

### Flight information regions

This dataset includes the following files:

#### firs.csv

This file contains informations on flight information regions. The structure of this file is as follows:

| Column    |  Type  | Description                                     | Example  |
| --------- | :----: | ----------------------------------------------- | :------: |
| icao_code | string | The ICAO code of the flight information region. |   LFBB   |
| name      | string | The name of the flight information region.      | BORDEAUX |

------

### Navaids

This dataset includes the following files:

#### navaids.csv

This file contains informations on navigational aids. The structure of this file is as follows:

| Column               |     Type      | Description                                                  |         Example          |
| -------------------- | :-----------: | ------------------------------------------------------------ | :----------------------: |
| identifier           |    string     | The identifier of the navaid.                                |           TOU            |
| name                 |    string     | The name of the navaid.                                      | TOULOUSE BLAGNAC VOR/DME |
| type                 |    string     | The type of the navaid ¹.                                    |         VOR-DME          |
| usage                |    string     | The usage type of the navaid ².                              |         ENROUTE          |
| frequency            |    integer    | The frequency of the navaid, in kilohertz.                   |          117700          |
| dme_channel          | string\|null  | The channel of the navaid DME part, or null if undefined.    |           124X           |
| dme_rx_frequency     | integer\|null | The RX frequency of the navaid DME part, in kilohertz, or null if undefined. |         1148000          |
| dme_rx_frequency     | integer\|null | The TX frequency of the navaid DME part, in kilohertz, or null if undefined. |         1211000          |
| dme_bias             | integer\|null | The bias of the navaid DME part, in nautical miles, or null if undefined. |            0             |
| vor_slaved_variation |  float\|null  | The slaved variation of the navaid VOR part, in degrees, or null if undefined. |            0             |
| loc_heading          |  float\|null  | The magnetic heading of the navaid localizer part, in degrees, or null if undefined. |           NULL           |
| gs_angle             |  float\|null  | The angle of the navaid glide slope part, in degrees, or null if undefined. |           NULL           |
| reception_range      |    integer    | The reception range of the navaid, in nautical miles.        |           130            |
| latitude             |     float     | The latitude of the navaid, in degrees.                      |       43.680833333       |
| longitude            |     float     | The longitude of the navaid, in degrees.                     |       1.309805556        |
| elevation            | integer\|null | The elevation of the navaid, in feet above mean sea level, or null if undefined. |           574            |
| region               |    string     | The ICAO region of the navaid, as defined in the ICAO Document 7910. |            LF            |
| airport              | string\|null  | The airport to which the navaid is associated, as an ICAO code, or null if undefined. |           NULL           |
| airport_runway       | string\|null  | The airport runway to which the navaid is associated, or null if undefined. |           NULL           |
| country              |    string     | The country where the navaid is located, as an ISO 3166-1 alpha-2 code. |            FR            |

¹ Can take one of the following values: *DME*, *DME-ILS*, *GS*, *IGS*, *ILS-I*, *ILS-II*, *ILS-III*, *LDA*, *LOC*, *NDB*, *SDF*, *TACAN*, *VOR*, *VOR-DME* or *VORTAC*.

² Can take one of the following values: *ENROUTE* (En-route navigation) or *TERMINAL* (Approach).

## License

Data is published under the terms of the [ODC Open Database License v1.0](https://spdx.org/licenses/ODbL-1.0.html).

## Contributing

Feel free to contribute, but please read the [contribution guidelines](docs/contributing.md) before.
