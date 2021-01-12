
// OSC Setup
OscIn oin;
OscMsg msg;

18000 => oin.port;
oin.listenAll();

spork ~ getOSC();

// Talos Setup

[2, 5, 3, 4, 1, 6] @=> int talosPorts[];

TalosString talos[6];

for(0 => int i; i < talos.size(); i++) {
    talos[i].init(i+1, talosPorts[i]);
    talos[i].setMode(0, 1);
}


// sporkable pluck function
fun void playTalos(int str, int pos, int vel, dur len) {
    talos[str-1].pluck(pos, vel, len);
}

// for(1 => int i; i < 100; i++) {
//     playTalos(4, 0, i, .25::second);
//     <<< i >>>;
// }

//////////////////////////////


Math.srandom(134);

// status variables
0 => int hasStarted;
0 => int isPlaying;
0 => int tremOn;

// rhythm setup
second => dur qtr;

// velocity setup
30 => int baseVel;
10 => int dVel;

// chordscales: 6--1 strings
[3, 3, 2, 0, 1, 0] @=> int c_major[];
[3, 2, 0, 0, 3, 3] @=> int g_major[];
[0, 0, 2, 2, 2, 0] @=> int a_major[];
[2, 0, 0, 2, 3, 2] @=> int d_major[];
[0, 0, 0, 2, 3, 0] @=> int d_add_2[];
[0, 0, 2, 2, 1, 0] @=> int a_minor[];
[0, 2, 2, 0, 0, 0] @=> int e_minor[];
[0, 2, 2, 0, 3, 2] @=> int e_m_add2[];
[1, 0, 0, 2, 3, 1] @=> int d_minor[];
[1, 1, 3, 3, 3, 1] @=> int bb_major[];

// initial chord
e_minor @=> int current[];
6 => int bassStr;

// probability array
[0., 0., 0., .25, .25, .25] @=> float chance[];

// divs
32 => int divs;
2 => int rhythm;

while(second => now);


fun void startChords() {
    while(isPlaying) {
        chordSection(current, 6, chance);
    }
}

fun int[] getCurrent(int idx) {
    if(idx == 0) return e_minor;
    else if(idx == 1) return d_major;
    else if(idx == 2) return g_major;
    else if(idx == 3) return c_major;
    else if(idx == 4) return e_m_add2;
    else if(idx == 5) return a_minor;
    else if(idx == 6) return d_minor;
    else return d_add_2;
}

fun void playBass(int chord[], int str) {
    for(0 => int i; i < 8; i++) {
        spork ~ playTalos(str, chord[6-str], baseVel, second);
        qtr => now;
    }
    second => now;
}

fun void playProb(int chord[], int str, float prob[]) {
    float dice;
    for(0 => int i; i < divs; i++) {
        Math.random2f(0., 1) => dice;
        Math.random2(-dVel, dVel) => int velOff;
        (baseVel > 0) *=> velOff;
        
        if(dice < prob[6-str]) {
            spork ~ playTalos(str, chord[6-str], baseVel+velOff, 4::qtr);
        }
        Math.pow(2,-rhythm)::qtr => now;
    }
    4::qtr => now;
}

fun void chordSection(int chord[], int bassString, float prob[]) {
    spork ~ playBass(chord, bassString);
    for(1 => int i; i < 4; i++) {
        spork ~ playProb(chord, i, prob);
    }
    8::qtr => now;
}


fun void getOSC() {
    while(true) {

        oin => now;
    
        while(oin.recv(msg) != 0) {

            if( msg.address == "/play") {
                msg.getInt(0) => int val;

                if(!hasStarted && val) {
                    spork ~ startChords();
                    1 => hasStarted;
                    1 => isPlaying;
                } 

                if(hasStarted) val => isPlaying;
            }

            if(msg.address == "/pmute") {
                msg.getInt(0) => int val;


                for(0 => int i; i < talos.size(); i++) {
                    talos[i].init(i+1, talosPorts[i]);
                    talos[i].setMode(21, val);
                }
            }

            if(msg.address == "/tremolo") {
                msg.getInt(0) => int val;

                val => tremOn;

                for(0 => int i; i < talos.size(); i++) {
                    talos[i].init(i+1, talosPorts[i]);
                    talos[i].setMode(20, val);
                }

                if(val) 1 => baseVel;
            }

            if(msg.address == "/vel") {
                msg.getInt(0) => int val;

                if(!tremOn) val => baseVel;
            }

            if(msg.address == "/chordscale") {
                msg.getInt(0) => int val;

                getCurrent(val) @=> current;
            }

            if(msg.address == "/prob") {

                for(0 => int i; i < msg.numArgs(); i++) {
                    msg.getInt(i)/127.0 => float val;
                    val => chance[3+i];
                }
            }

            if(msg.address == "/tempo") {
                msg.getInt(0) => int val;
                setTempo(val);
            }

            if(msg.address == "/rhythm") {
                msg.getInt(0) => int val;

                8*(val+1) => divs;
                val => rhythm;
            }
            
            // msg.getInt(0) => int val;
            // <<< "OSC Address:", msg.address >>>;
            // for(0 => int i; i < msg.numArgs(); i++) {
            //     <<< "Arg.", i, ":", msg.getInt(i) >>>;
            // }
        }
    }
}

fun void setTempo(int bpm) {
    (60.0/bpm)::second => qtr;
}