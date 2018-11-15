{
  "version": "1.2",
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
          "id": "eb4865d5-0a4b-498b-a26b-21bc90b5ae67",
          "type": "basic.input",
          "data": {
            "name": "d0",
            "pins": [
              {
                "index": "0",
                "name": "DD0",
                "value": "78"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 680,
            "y": 608
          }
        },
        {
          "id": "9c2013a0-9cb6-4e0e-a6e5-ad934c64b2c5",
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
            "x": 1608,
            "y": 608
          }
        },
        {
          "id": "1b4e969e-c1ef-44f7-b78b-0a8100e29605",
          "type": "basic.code",
          "data": {
            "code": "assign salida1 = entrada;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "entrada"
                }
              ],
              "out": [
                {
                  "name": "salida1"
                }
              ]
            }
          },
          "position": {
            "x": 904,
            "y": 496
          },
          "size": {
            "width": 544,
            "height": 288
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1b4e969e-c1ef-44f7-b78b-0a8100e29605",
            "port": "salida1"
          },
          "target": {
            "block": "9c2013a0-9cb6-4e0e-a6e5-ad934c64b2c5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "eb4865d5-0a4b-498b-a26b-21bc90b5ae67",
            "port": "out"
          },
          "target": {
            "block": "1b4e969e-c1ef-44f7-b78b-0a8100e29605",
            "port": "entrada"
          }
        }
      ]
    }
  },
  "dependencies": {}
}