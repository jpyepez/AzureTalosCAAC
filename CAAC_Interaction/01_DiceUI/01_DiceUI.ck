
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

Event dice;
Math.srandom(184);

// status variables
0 => int hasStarted;
0 => int isPlaying;
0 => int tremOn;

[0, 1, 2, 3, 4, 5, 6, 7] @=> int patPool[];
8 => int patSum;

fun void roll(Event d) {
    playMelody(0);

    while(isPlaying) {
        d => now;

        if(patSum > 0) {
            // roll dice and play melody
            Math.random2(0, patPool.size()-1) => int num;
            playMelody(patPool[num]);
        } else {
            playMelody(0);
        }
    }
    me.yield();
}


// rhythm (set initial tempo)
.2::second => dur q;
2::q => dur h;
4::q => dur w;

// set base velocity
70 => int baseVel;

while(second => now);

// melody A: A#11
fun void melodyA() {

    spork ~ playTalos(5, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 1, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(5, 0, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(4, 1, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(5, 0, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}

// melodyB: Am(add2)
fun void melodyB() {
    spork ~ playTalos(5, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 1, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 1, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(5, 0, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 1, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 1, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(5, 0, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}


fun void melodyC() {
    spork ~ playTalos(5, 3, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 3, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 1, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 4, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(5, 3, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 3, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 1, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 4, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(5, 3, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}

fun void melodyD() {
    spork ~ playTalos(6, 3, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 4, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 3, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(6, 3, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 4, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 3, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(6, 3, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}


fun void melodyE() {
    spork ~ playTalos(6, 1, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 3, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 1, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(6, 1, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 3, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 1, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(6, 1, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}


fun void melodyF() {
    spork ~ playTalos(6, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 4, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 3, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(6, 0, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 4, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 3, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(6, 0, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}


fun void melodyG() {
    spork ~ playTalos(4, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 1, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(1, 1, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(1, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 3, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 0, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(3, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 1, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(1, 1, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(1, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 3, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(4, 0, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}


fun void melodyH() {
    spork ~ playTalos(6, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(4, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 1, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;

    spork ~ playTalos(1, 2, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(2, 0, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(3, 1, getVel(baseVel), w);
    q => now;
    spork ~ playTalos(6, 0, getVel(baseVel), w);
    q => now;

    repeat(3) {
        q => now;
        spork ~ playTalos(4, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 1, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;

        spork ~ playTalos(1, 2, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(2, 0, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(3, 1, getVel(baseVel), w);
        q => now;
        spork ~ playTalos(6, 0, getVel(baseVel), w);
        q => now;
    }

    dice.broadcast();
    w => now;
}


///////////////
// FUNCTIONS


fun int getVel(int base) {
    return base + Math.random2(0, base/3);
}

fun void playMelody(int idx) {
    <<< "Playing melody ", idx >>>; 

    if(idx == 0) {
        spork ~ melodyA();
    } else if(idx == 1) {
        spork ~ melodyB();
    } else if(idx == 2) {
        spork ~ melodyC();
    } else if(idx == 3) {
        spork ~ melodyD();
    } else if(idx == 4) {
        spork ~ melodyE();
    } else if(idx == 5) {
        spork ~ melodyF();
    } else if(idx == 6) {
        spork ~ melodyG();
    } else {
        spork ~ melodyH();
    }
}

fun void getOSC() {
    while(true) {

        oin => now;
    
        while(oin.recv(msg) != 0) {

            if( msg.address == "/play") {
                msg.getInt(0) => int val;

                if(!hasStarted && val) {
                    spork ~ roll(dice);
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

                if(val) 5 => baseVel;
            }

            if(msg.address == "/patterns") {
                sumArgs(msg) => patSum;
                updatePool(msg);
            }

            if(msg.address == "/vel") {
                msg.getInt(0) => int val;

                if(!tremOn) val => baseVel;
            }

            if(msg.address == "/tempo") {
                msg.getInt(0) => int val;
                <<< val >>>;
                setTempo(val);
            }
            
            // msg.getInt(0) => int val;
            // <<< "OSC Address:", msg.address >>>;
            // for(0 => int i; i < msg.numArgs(); i++) {
            //     <<< "Arg.", i, ":", msg.getInt(i) >>>;
            // }
        }
    }
}

fun int sumArgs(OscMsg m) {
    0 => int sum;
    for(0 => int i; i < m.numArgs(); i++) {
        msg.getInt(i) +=> sum;
    }
    return sum;
}

fun void updatePool(OscMsg m) {
    int pool[0];
    
    for(0 => int i; i < m.numArgs(); i++) {
        if(msg.getInt(i) != 0) {
            pool << i;
        }
    }
    pool @=> patPool;
    // printArray(patPool);
}

fun void printArray(int arr[]) {
    string arrString;

    for(0 => int i; i < arr.size(); i++) {
        Std.itoa(arr[i]) +=> arrString;
    }
    <<< arrString >>>;
}

fun void setTempo(int bpm) {
    (60.0/bpm)::second => q;
    2::q => h;
    4::q => w;
}