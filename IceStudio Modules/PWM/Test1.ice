{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "f473c225-0ef0-47a4-a082-e2611d2f4af1",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "119"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 504,
            "y": 64
          }
        },
        {
          "id": "2b8be8bb-75f5-4eaa-b69c-0804dae6ced6",
          "type": "basic.input",
          "data": {
            "name": "in",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": -456,
            "y": 64
          }
        },
        {
          "id": "63e6b58b-a416-4d1c-a319-499726dd6836",
          "type": "basic.constant",
          "data": {
            "name": "ms",
            "value": "20",
            "local": false
          },
          "position": {
            "x": -80,
            "y": -216
          }
        },
        {
          "id": "651e41e5-1f15-43a2-8366-31bffaa7ffdd",
          "type": "basic.constant",
          "data": {
            "name": "N_bits",
            "value": "8",
            "local": false
          },
          "position": {
            "x": 224,
            "y": -224
          }
        },
        {
          "id": "a0b6639e-0a95-4902-90f3-6c79f72a1994",
          "type": "basic.code",
          "data": {
            "code": "\n  // Constants (parameters) to create the frequencies needed:\n  // Input clock is 12MHz, chosen arbitrarily.\n  // Formula is: (12MHz / f_target * 50% duty cycle)\n  // So for 100 Hz: 12000000 / 100 * 0.5 = 60000\n  \n  \n  localparam Hz=2**N_bits*1000/ms; // ** = funcion potencia\n  localparam i_freq=12000000;\n  localparam cuenta_Hasta = i_freq/Hz/2;\n  localparam N=$clog2(cuenta_Hasta);\n  \n  // These signals will be the counters:\n  reg [N-1:0] contador=0;\n  \n  // These signals will toggle at the frequencies needed:\n  reg T = 0;\n \n  always @ (posedge i_clock)\n   contador <= (contador == cuenta_Hasta-1) ? 0 : contador + 1;\n\n  always @(posedge i_clock)\n  begin\n   if (contador==0)\n     T<=!T;\n   else\n     T=T;\n  end\n  \n  assign clk=T;\n  \n  \n  \n    ",
            "params": [
              {
                "name": "ms"
              },
              {
                "name": "N_bits"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "i_clock"
                }
              ],
              "out": [
                {
                  "name": "clk"
                }
              ]
            }
          },
          "position": {
            "x": -176,
            "y": -80
          },
          "size": {
            "width": 592,
            "height": 352
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "63e6b58b-a416-4d1c-a319-499726dd6836",
            "port": "constant-out"
          },
          "target": {
            "block": "a0b6639e-0a95-4902-90f3-6c79f72a1994",
            "port": "ms"
          }
        },
        {
          "source": {
            "block": "651e41e5-1f15-43a2-8366-31bffaa7ffdd",
            "port": "constant-out"
          },
          "target": {
            "block": "a0b6639e-0a95-4902-90f3-6c79f72a1994",
            "port": "N_bits"
          }
        },
        {
          "source": {
            "block": "2b8be8bb-75f5-4eaa-b69c-0804dae6ced6",
            "port": "out"
          },
          "target": {
            "block": "a0b6639e-0a95-4902-90f3-6c79f72a1994",
            "port": "i_clock"
          }
        },
        {
          "source": {
            "block": "a0b6639e-0a95-4902-90f3-6c79f72a1994",
            "port": "clk"
          },
          "target": {
            "block": "f473c225-0ef0-47a4-a082-e2611d2f4af1",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 512,
        "y": 309.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}