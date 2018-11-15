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
          "id": "07e6fb83-770c-4809-a8f6-848ce7add8b0",
          "type": "basic.output",
          "data": {
            "name": "dutty",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 392,
            "y": -24
          }
        },
        {
          "id": "6c64a24e-c94e-4c6e-a00e-7de214a7bff1",
          "type": "basic.input",
          "data": {
            "name": "sw1",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -416,
            "y": 48
          }
        },
        {
          "id": "6eb340fe-5c16-4e24-abef-ee7feedea5b5",
          "type": "basic.output",
          "data": {
            "name": "pwm",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 776,
            "y": 224
          }
        },
        {
          "id": "2d9c88ae-9ac9-4b04-b861-48db9ab39268",
          "type": "127dc02e43e1dffaa24e35f9b3b75ccba5576a9a",
          "position": {
            "x": 80,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a62ed0c9-0169-41cc-831c-be04e646824c",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] count=0;\nreg pwm;\nalways @(posedge clk)\n    begin\n      count <= count+1;\n      if(count<dutty)\n        pwm <= 1'b1;\n      else\n        pwm <= 1'b0;\n    end\n  ",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "dutty",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "pwm"
                }
              ]
            }
          },
          "position": {
            "x": 336,
            "y": 152
          },
          "size": {
            "width": 352,
            "height": 208
          }
        },
        {
          "id": "68ffaf3f-4f76-4e2a-9906-8fde34dfd4b3",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] dutty = 0;\r\n\r\nalways @(posedge sw1)\r\n    begin\r\n        dutty <= (dutty == 8'd255) ? 0 : dutty + 1;\r\n    end\r\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "sw1"
                }
              ],
              "out": [
                {
                  "name": "dutty",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -232,
            "y": -40
          },
          "size": {
            "width": 448,
            "height": 240
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2d9c88ae-9ac9-4b04-b861-48db9ab39268",
            "port": "f473c225-0ef0-47a4-a082-e2611d2f4af1"
          },
          "target": {
            "block": "a62ed0c9-0169-41cc-831c-be04e646824c",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "68ffaf3f-4f76-4e2a-9906-8fde34dfd4b3",
            "port": "dutty"
          },
          "target": {
            "block": "a62ed0c9-0169-41cc-831c-be04e646824c",
            "port": "dutty"
          },
          "size": 8
        },
        {
          "source": {
            "block": "68ffaf3f-4f76-4e2a-9906-8fde34dfd4b3",
            "port": "dutty"
          },
          "target": {
            "block": "07e6fb83-770c-4809-a8f6-848ce7add8b0",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "a62ed0c9-0169-41cc-831c-be04e646824c",
            "port": "pwm"
          },
          "target": {
            "block": "6eb340fe-5c16-4e24-abef-ee7feedea5b5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "6c64a24e-c94e-4c6e-a00e-7de214a7bff1",
            "port": "out"
          },
          "target": {
            "block": "68ffaf3f-4f76-4e2a-9906-8fde34dfd4b3",
            "port": "sw1"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 520,
        "y": 189.6905
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "127dc02e43e1dffaa24e35f9b3b75ccba5576a9a": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f473c225-0ef0-47a4-a082-e2611d2f4af1",
              "type": "basic.output",
              "data": {
                "name": "out"
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
      }
    }
  }
}