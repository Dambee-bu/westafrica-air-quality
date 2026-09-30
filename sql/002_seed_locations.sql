INSERT INTO locations (city, country, latitude, longitude) VALUES
    ('Accra',       'Ghana',         5.6037,  -0.1870),
    ('Kumasi',      'Ghana',         6.6885,  -1.6244),
    ('Tamale',      'Ghana',         9.4008,  -0.8393),
    ('Takoradi',    'Ghana',         4.8845,  -1.7554),
    ('Lagos',       'Nigeria',       6.5244,   3.3792),
    ('Abuja',       'Nigeria',       9.0765,   7.3986),
    ('Abidjan',     'Côte d''Ivoire', 5.3600,  -4.0083),
    ('Lomé',        'Togo',          6.1319,   1.2228),
    ('Ouagadougou', 'Burkina Faso', 12.3714,  -1.5197),
    ('Dakar',       'Senegal',      14.7167, -17.4677)
ON CONFLICT (city, country) DO NOTHING;