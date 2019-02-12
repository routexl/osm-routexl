/* ****************************************************************** */
/* OSM RouteXL for Imposm                                             */
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
Map {
  font-directory: url(./fonts);
}

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

/* Identifies the text case of the text label 
	Available values: none uppercase lowercase capitalize */
@text_transform: none;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #FBFBFB;
@water:             #CCE4FB;
@grass:             @land;
@beach:             @land;

@park:              @grass;
@wooded:            @grass;
@agriculture:       @grass;

@building:          #DDDDDD;
@hospital:          @building;
@school:            @building;
@sports:            @building;

@residential:       @land * 0.98;
@commercial:        @land * 0.97;
@industrial:        @land * 0.96;
@parking:           @land * 0.95;
@cemetery:          @land * 0.94;

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

@motorway_line:     #EEE;
@motorway_fill:     #FFF;
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #EEE;
@trunk_fill:        #FFF;
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #EEE;
@primary_fill:      #FFF;
@primary_case:      @primary_line * 0.9;

@secondary_line:    #EEE;
@secondary_fill:    #FFF;
@secondary_case:    @secondary_line * 0.9;

@standard_line:     #EEE;
@standard_fill:     #FFF;
@standard_case:     @land * 0.9;

@pedestrian_line:   #FFF;
@pedestrian_fill:   #FFF;
@pedestrian_case:   @land;

@cycle_line:        #FFF;
@cycle_fill:        #FFF;
@cycle_case:        @land;

@rail_line:         #BBB;
@rail_fill:         #AAA;
@rail_case:         #EEE;

@aeroway:           #FFF;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #DCEDE3;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        #FFF;

@country_text:      #999;
@country_halo:      @place_halo;

@state_text:        @country_text * 1.01;
@state_halo:        @place_halo;

@city_text:         @state_text * 1.01;
@city_halo:         @place_halo;

@town_text:         @city_text * 1.01;
@town_halo:         @place_halo;

@poi_text:          @city_text * 1.01;

@road_text:         @town_text * 1.01;
@road_halo:         #FFF;

@other_text:        @road_text * 1.01;
@other_halo:        @place_halo;

@locality_text:     @road_text * 1.01;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      @locality_text * 1.01;
@village_halo:      @place_halo;

@water_text:        #8DA7CF;


/* ****************************************************************** */
