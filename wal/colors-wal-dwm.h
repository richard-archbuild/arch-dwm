static const char norm_fg[] = "#d1c7d5";
static const char norm_bg[] = "#0b0b1b";
static const char norm_border[] = "#928b95";

static const char sel_fg[] = "#d1c7d5";
static const char sel_bg[] = "#C63547";
static const char sel_border[] = "#d1c7d5";

static const char urg_fg[] = "#d1c7d5";
static const char urg_bg[] = "#544A5F";
static const char urg_border[] = "#544A5F";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
