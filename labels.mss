/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>=3][zoom<=7] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  text-transform: @text_transform;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:12 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:13 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=9] {
  text-name:'[name]';
  text-face-name:@sans_bold_italic;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  text-transform: @text_transform;
  [zoom=6] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=7] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>8] {
    text-halo-radius: 2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=8][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  text-transform: @text_transform;
  [zoom=8] {
    text-size:10;
    text-wrap-width: 50;
  }    
  [zoom=9] {
    text-size:11;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:12;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:13;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:14;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:15;
    text-character-spacing: 2;
    text-wrap-width: 100;
  }
  [zoom=14] {
    text-size:16;
    text-character-spacing: 2;
    text-wrap-width: 100;
  }
  [zoom=15] {
    text-size:17;
    text-character-spacing: 3;
    text-wrap-width: 100;
  }
}

/* ---- Towns and villages ------------------------------------------- */

#place::town[type='town'][zoom>=10][zoom<=16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  text-transform: @text_transform;
  [zoom=10]{
    text-size: 10;
  }
  [zoom=11]{
    text-size: 11;
  }
  [zoom=12]{
    text-size: 12;
  }
  [zoom=13]{
    text-size: 13;
    text-character-spacing: 1;
  }
  [zoom=14]{
    text-size: 14;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom=15]{
    text-size: 15;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom=16]{
    text-size: 16;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
}

#place::small[type='village'][zoom>=11][zoom<=16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  text-transform: @text_transform;
  [zoom=11]{
    text-size: 8;
  }
  [zoom=12]{
    text-size: 9;
  }
  [zoom=13]{
    text-size: 10;
  }
  [zoom=14]{
    text-size: 11;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom=15]{
    text-size: 12;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom=16]{
    text-size: 13;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='suburb'][zoom>=16],
#place::small[type='hamlet'][zoom>=16],
#place::small[type='neighbourhood'][zoom>=16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:12;
  text-character-spacing: 2;
  text-wrap-width: 120;
  text-line-spacing: 2;
  text-halo-fill:@city_halo;
  text-halo-radius:1;
  text-transform: @text_transform;
  [zoom=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:11;
  text-wrap-width: 120;
  text-line-spacing: 2;
  text-halo-fill:@city_halo;
  text-halo-radius:1;
  text-transform: @text_transform;
  [zoom=18] {
    text-size:12;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}
   
#poi[type='university'][zoom>=15],
#poi[type='hospital'][zoom>=16],
#poi[type='school'][zoom>=17],
#poi[type='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:10;
  text-wrap-width:30;
  text-fill: @poi_text;
}


/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: @water_text;
  text-placement: line;
  text-min-distance: 400;
  text-size: 8;
  text-transform: @text_transform;
  text-character-spacing: 1;
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 10;
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom=18] {
    text-size: 12;
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=11][zoom<=14][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: #fff;
  shield-min-distance: 70; 
  shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  }
  [zoom=11] { shield-min-distance: 80; } //50
  [zoom=12] { shield-min-distance: 90; } //60
  [zoom=13] { shield-min-distance: 120; } //120
  [zoom=14] { shield-min-distance: 180; }
}

#motorway_label[type='motorway'][zoom>10],
#motorway_label[type='trunk'][zoom>10] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:70;
  text-size:10;
  text-transform: @text_transform;
  text-character-spacing: 1;
  [zoom=11] { text-min-distance:80; }
  [zoom=12] { text-min-distance:90; }
  [zoom=13] { text-min-distance:100; }
}

#mainroad_label[type='primary'][zoom>13],
#mainroad_label[type='secondary'][zoom>14],
#mainroad_label[type='tertiary'][zoom>15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:9;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:70;
  text-transform: @text_transform;
  text-character-spacing: 1;
}

#minorroad_label[zoom>15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:8;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:70;
  text-transform: @text_transform;
  text-character-spacing: 1;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */
#motorway_label[zoom>=16],
#mainroad_label[zoom>=16],
#minorroad_label[zoom>=16] {
  [oneway = 'yes'],
  [oneway='-1'] {
     marker-placement:line;
     marker-max-error: 0.5;
     marker-spacing: 200;
     marker-file: url(img/icon/oneway.svg);
     [oneway='-1'] { marker-file: url(img/icon/oneway-reverse.svg); }
     [zoom=16] { marker-transform: "scale(0.5)"; }
     [zoom=17] { marker-transform: "scale(0.75)"; }
  }
}


/* ================================================================== */
/* TRAIN STATIONS
/* ================================================================== */

#train_stations[zoom>15]{
  point-file:url('img/icon/rail-12.png');
  [zoom>=17] { point-file:url('img/icon/rail-18.png'); }
}

/* ****************************************************************** */
