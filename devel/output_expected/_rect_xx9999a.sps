cd "devel/output_result".

data list file = "xx9999a.dat" /
  RECTYPE   1-1 (a)
  DWNUM     2-7
  HHNUM     8-8
  HDFIRSTD  26-26
  FBIG_ND   45-48
  BADDW     49-49
  CANTON    67-69 (1)
  URBAN     80-80
  DWTYPE    81-81
  OWNERSHP  82-83
  RENT      84-87 (a)
  RELATE    67-67
  SEX       68-68
  AGE       69-71
  RESPREV2  80-83 (3)
  SOCSEC    93-93
  EDLEVEL   100-100
  LIT       101-101
  BIGDEC    101-110 (5)
  BIGINT    101-119
  BIGSTR    101-119 (a)
.

variable labels
  RECTYPE     "Record type"
  DWNUM       "Dwelling number"
  HHNUM       """Household number"""
  HDFIRSTD    "Head not first [""dwelling-wide""] {note}"
  FBIG_ND     "N of persons in large dwelling before it was split (see FBIG)"
  BADDW       "Bad dwelling"
  CANTON      "Canton ""geo area"""
  URBAN       "Urban/Rural"
  DWTYPE      "Dwelling type"
  OWNERSHP    "Occupancy_and_ownership_status........40........50........60........70........80........90.......100"
            + ".......110.......120"
  RENT        "Monthly rent"
  RELATE      "Relationship to household head"
  SEX         "Sex"
  AGE         "Age"
  RESPREV2    "Place of residence 5 years ago - code"
  EDLEVEL     "Educational level"
  LIT         "Literacy"
  BIGDEC      "Big decimal"
  BIGINT      "Big integer"
  BIGSTR      "Big string"
.

value labels
  /RECTYPE
    "H"   "Household"
    "P"   "Person"
  /HHNUM
    1   "[no label]"
  /HDFIRSTD
    0   "No problem"
    1   "One or more households have heads but not as the first person"
  /FBIG_ND
    0     "[no label]"
    107   "[no label]"
    128   "[no label]"
    154   "[no label]"
    155   "[no label]"
    171   "[no label]"
    191   "[no label]"
    529   "[no label]"
    949   "[no label]"
  /BADDW
    0   "No problem"
    1   "Bad dwelling"
  /URBAN
    1   "Urban"
    2   "Rural"
  /DWTYPE
    1   "Ordinary labels don't have """"skills"""""
    2   "Ranch"
    3   "Improvised"
    4   "Mobile"
    5   "Collective dwelling"
  /OWNERSHP
    0    "Occupied:_rented......................40........50........60........70........80........90.......100"
       + ".......110.......120"
    1    "Occupied:owned"
    2    "Occupied: other"
    3    "Vacant: for rent"
    4    "Vacant: for sale"
    5    "Vacant: for vacation"
    6    "Vacant: Under repair"
    7    "Vacant: Under construction"
    8    "Vacant: other"
    9    "Unknown"
    10   "Collective dwelling"
  /RENT
    "......................................40........50........60........70........80........90.......100" +
    ".......110.......120.......130.......140.......150.......160.......170.......180.......190.......200" +
    ".......210.......220.......230.......240.......250.......260.......270.......280.......290.......300"   "[no label]............................40........50........60........70........80........90.......100"
                                                                                                           + ".......110.......120"
    "0050"                                                                                                   "[no label]"
    "0070"                                                                                                   "[no label]"
    "0075"                                                                                                   "[no label]"
    "0080"                                                                                                   "[no label]"
    "0085"                                                                                                   "[no label]"
    "0100"                                                                                                   "[no label]"
    "0120"                                                                                                   "[no label]"
    "0125"                                                                                                   "[no label]"
    "0130"                                                                                                   "[no label]"
    "0140"                                                                                                   "[no label]"
    "0150"                                                                                                   "[no label]"
    "0160"                                                                                                   "[no label]"
    "0175"                                                                                                   "[no label]"
    "0200"                                                                                                   "[no label]"
    "0210"                                                                                                   "[no label]"
    "0225"                                                                                                   "[no label]"
    "0240"                                                                                                   "[no label]"
    "0250"                                                                                                   "[no label]"
    "0300"                                                                                                   "[no label]"
    "0400"                                                                                                   "[no label]"
    "0425"                                                                                                   "[no label]"
    "0454"                                                                                                   "[no label]"
    "0500"                                                                                                   "[no label]"
    "0550"                                                                                                   "[no label]"
    "0700"                                                                                                   "[no label]"
    "1800"                                                                                                   "[no label]"
    "2000"                                                                                                   "[no label]"
    "8501"                                                                                                   "[no label]"
  /RELATE
    2   "Head"
    3   "Spouse - Partner"
    4   "Son/daughter, stepson/stepdaughter"
    5   "Other relatives"
    6   "Domestic servants and their relatives"
    7   "Other non-relatives"
    8   "Member in collective dwellings"
  /SEX
    1   "Male"
    2   "Female"
  /SOCSEC
    1   "Directly covered person"
    2   "Covered through family member"
    3   "Not covered"
  /LIT
    1   "Able to read and write"
    2   "Not able to read and write"
.

execute.

