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
          "id": "93221e3a-4163-43f5-94f5-920c5dbe1e7e",
          "type": "basic.output",
          "data": {
            "name": "vga_h_sync",
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
            "x": 1032,
            "y": -40
          }
        },
        {
          "id": "fc004c54-093b-42c8-91e3-1c4b6f9f042c",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": -392,
            "y": 80
          }
        },
        {
          "id": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a",
          "type": "basic.output",
          "data": {
            "name": "vga_v_sync",
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
            "x": 1032,
            "y": 192
          }
        },
        {
          "id": "bad4abbc-ae59-47e5-90ac-47e22aab4393",
          "type": "basic.output",
          "data": {
            "name": "CounterX",
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
            "x": 1032,
            "y": 416
          }
        },
        {
          "id": "97b41842-6f0f-4011-bf84-7527f8356c57",
          "type": "basic.input",
          "data": {
            "name": "",
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
            "x": -408,
            "y": 536
          }
        },
        {
          "id": "4b768253-7e58-462d-bd0d-31d2c2c5533f",
          "type": "basic.output",
          "data": {
            "name": "CounterY",
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
            "x": 1032,
            "y": 648
          }
        },
        {
          "id": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
          "type": "basic.code",
          "data": {
            "code": "\r\n//Nosotros tenemos 640 x 480, necesitamos saber cuando hemos llegado al final del conteo\r\nwire counterXmaxed = (CounterX == 10'b1100011111); //si se cumple counterXmaxed sera 1 binario\r\nwire counterYmaxed = (CounterY == 10'd524);\r\nreg [9:0] CounterX;\r\nreg [9:0] CounterY;\r\n\r\nlocalparam [9:0] Hsync = 10'd96;\r\nlocalparam [9:0] HBack = 10'd144;\r\nlocalparam [9:0] Hfront = 10'd784;\r\nlocalparam [9:0] Vsync = 10'd2;\r\nlocalparam [9:0] YBack = 10'd35;\r\nlocalparam [9:0] Yfront = 10'd515;\r\n\r\n//Contadores para X y para Y\r\nalways @(posedge clk)\r\nbegin\r\n  if (counterXmaxed == 1'b1 || rst == 1'b1)\r\n    CounterX <= 0;\r\n  else\r\n    CounterX <= CounterX + 10'd1;\r\nend\r\n// Cuando la linea horizontal termina, la vertical tiene que aumentar uno, obvio\r\nalways @(posedge clk)\r\nbegin\r\n  if (counterXmaxed == 1'b1 )\r\n    CounterY <= CounterY + 10'd1;\r\n  else\r\n    begin\r\n      if (rst == 1'b1 || counterYmaxed == 1'b1)\r\n        CounterY <= 10'd0 ; // es decir, su máximo\r\n    end\r\nend\r\n\r\n//ahora evaluamos las señales de sincronizacion, si estan o no en la zona de sincronizacion\r\n\r\nreg vga_HS, vga_VS;\r\nalways @(CounterX, CounterY)    //evalua cada pixel, solo son uno si se encuntran dentro de la señal de sincronizacion,\r\n //de lo contrario, cero\r\n  begin\r\n   vga_HS <= !(CounterX[9:0]>Hsync);\r\n   vga_VS <= !(CounterY[9:0]>Vsync);\r\n  end\r\n\r\n  assign vga_h_sync = vga_HS;     // Asignación de los valores para las señales\r\n\r\n  //de output tipo wire\r\n\r\n  assign vga_v_sync = vga_VS;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "rst"
                }
              ],
              "out": [
                {
                  "name": "vga_h_sync"
                },
                {
                  "name": "vga_v_sync"
                },
                {
                  "name": "CounterX"
                },
                {
                  "name": "CounterY"
                }
              ]
            }
          },
          "position": {
            "x": -88,
            "y": -112
          },
          "size": {
            "width": 976,
            "height": 912
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
            "port": "vga_v_sync"
          },
          "target": {
            "block": "a4a6fe2b-0ac1-4f34-9462-634c5e51016a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
            "port": "vga_h_sync"
          },
          "target": {
            "block": "93221e3a-4163-43f5-94f5-920c5dbe1e7e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "fc004c54-093b-42c8-91e3-1c4b6f9f042c",
            "port": "out"
          },
          "target": {
            "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "97b41842-6f0f-4011-bf84-7527f8356c57",
            "port": "out"
          },
          "target": {
            "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
            "port": "CounterX"
          },
          "target": {
            "block": "bad4abbc-ae59-47e5-90ac-47e22aab4393",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "d5d8a020-2959-43b8-afd1-225f95e94cc0",
            "port": "CounterY"
          },
          "target": {
            "block": "4b768253-7e58-462d-bd0d-31d2c2c5533f",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 849,
        "y": 268.5
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}