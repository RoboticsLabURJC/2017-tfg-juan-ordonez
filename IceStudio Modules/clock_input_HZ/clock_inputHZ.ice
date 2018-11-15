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
          "id": "fe72ae17-837c-4c02-bb4d-271af3d60163",
          "type": "basic.output",
          "data": {
            "name": "d1",
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
            "x": 1464,
            "y": 424
          }
        },
        {
          "id": "1c818898-17e3-4424-8ea1-5178b19e9e77",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "x": 264,
            "y": 432
          }
        },
        {
          "id": "9c74f8d8-b833-4824-8097-016a62d57ff2",
          "type": "basic.code",
          "data": {
            "code": "reg generated_clk = 0;\r\n\r\nparameter frecuency_system= 12_000_000;\r\nparameter frecuency_generated = 400_000;\r\nparameter total_count = frecuency_system/frecuency_generated;\r\nparameter N=$clog2(total_count);\r\n\r\n reg [N-1:0] count=0;\r\n\r\nalways @(posedge system_clk)\r\n    begin\r\n      count <= (count==total_count-1) ? 0 : count +1;\r\n    end\r\n\r\nalways @(count)\r\n    begin\r\n      generated_clk <= (generated_clk == 0) ? 1 : 0; \r\n    end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "system_clk"
                }
              ],
              "out": [
                {
                  "name": "generated_clk"
                }
              ]
            }
          },
          "position": {
            "x": 480,
            "y": 240
          },
          "size": {
            "width": 832,
            "height": 448
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9c74f8d8-b833-4824-8097-016a62d57ff2",
            "port": "generated_clk"
          },
          "target": {
            "block": "fe72ae17-837c-4c02-bb4d-271af3d60163",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1c818898-17e3-4424-8ea1-5178b19e9e77",
            "port": "out"
          },
          "target": {
            "block": "9c74f8d8-b833-4824-8097-016a62d57ff2",
            "port": "system_clk"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 346.1774,
        "y": 211.0917
      },
      "zoom": 1
    }
  },
  "dependencies": {}
}