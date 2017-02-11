read_csv("data-raw/db1668.csv",
                   col_types = cols(
                     sun_altitude_d = col_integer(),
                     sun_altitude_m = col_integer(),
                     magnetic_azimuth_d = col_integer(),
                     magnetic_azimuth_m = col_integer(),
                     sun_azimuth_m = col_integer(),
                     sun_azimuth_d = col_integer(),
                     variation_d = col_integer(),
                     variation_m = col_integer()
                   )) %>%
  mutate(sun_altitude = sun_altitude_d + sun_altitude_m / 60,
         magnetic_azimuth = magnetic_azimuth_d + magnetic_azimuth_m / 60,
         sun_azimuth = sun_azimuth_d + sun_azimuth_m / 60,
         variation = variation_d + variation_m / 60) %>%
  select(-matches("_[dm]$")) %>%
  save_data("db1668")
