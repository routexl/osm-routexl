/* ****************************************************************** */
/* OSM-RouteXL                                                        */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:       "Open Sans Regular", "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@sans_lt_italic:    "Open Sans Oblique", "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@sans:          "Open Sans Semibold", "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

@sans_italic:   "Open Sans Semibold Italic",  "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";


@sans_bold:  "Open Sans Bold", "DejaVu Sans Bold", "Arundina Sans Bold", "Padauk Bold", "Mukti Narrow Bold", "TSCu_Paranar Bold", "Mallige Bold",
             "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
             "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
             "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Oblique", "DejaVu Sans Oblique", "Arundina Sans Italic", "TSCu_Paranar Italic", "Mallige NormalItalic",
                "DejaVu Sans Book", "Arundina Sans Regular", "Padauk Regular", "Khmer OS Metal Chrieng Regular",
                "Mukti Narrow Regular", "gargi Medium", "TSCu_Paranar Regular", "Tibetan Machine Uni Regular", "Mallige Normal",
                "Droid Sans Fallback Regular", "Unifont Medium", "unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #FFFFFF;
@water:             #DDEEFF;
@grass:             #FFFFFF;
@beach:             #FFFFFF;
@park:              #FFFFFF;
@cemetery:          #FFFFFF;
@wooded:            #FFFFFF;
@agriculture:       #FFFFFF;

@building:          #EEEEEE;
@hospital:          #EEEEEE;
@school:            #EEEEEE;
@sports:            #EEEEEE;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           #EEEEEE;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #AAA;
@motorway_fill:     #FFF;
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #BBB;
@trunk_fill:        #FFF;
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #CCC;
@primary_fill:      #FFF;
@primary_case:      @primary_line * 0.9;

@secondary_line:    #DDD;
@secondary_fill:    #FFF;
@secondary_case:    @secondary_line * 0.9;

@standard_line:     #EEE;
@standard_fill:     #FFF;
@standard_case:     @land * 0.9;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FFF;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        #FFF;
@cycle_case:        @land;

@rail_line:         #EEE;
@rail_fill:         #EEE;
@rail_case:         @land;

@aeroway:           #FFF;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #444;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,34%);

@country_text:      #777;
@country_halo:      @place_halo;

@state_text:        #888;
@state_halo:        @place_halo;

@city_text:         #999;
@city_halo:         @place_halo;

@town_text:         #AAA;
@town_halo:         @place_halo;

@poi_text:          #AAA;

@road_text:         #AAA;
@road_halo:         #FFF;

@other_text:        #BBB;
@other_halo:        @place_halo;

@locality_text:     #CCC;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #DDD;
@village_halo:      @place_halo;

/* ****************************************************************** */
