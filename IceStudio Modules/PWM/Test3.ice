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
          "id": "80ca6fc6-88ad-43e5-933e-92e786baaa91",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 920,
            "y": 152
          }
        },
        {
          "id": "4e0884dc-a4fd-4df8-b833-66e209c51156",
          "type": "basic.code",
          "data": {
            "code": "localparam pulses_1seg = 12000000;\r\nreg [24:0] contador1 = 0;\r\nreg [3:0] contador2 = 0;\r\nreg led;\r\n\r\nalways @(posedge clk)\r\n    begin\r\n      contador1 <= (contador1 == pulses_1seg-1) ? 0 : contador1 + 1; //cuando se pone a cero ha pasado 1 segundo, nos interesa\r\n    end\r\n\r\nalways @(contador1)\r\n    begin\r\n      if (contador1 == 0) //cuando pasa un segundo, es decir. contador1 es 0, sumamos un secundero\r\n        contador2 <= (contador2 == 10) ? 0 : contador2 +1 ;\r\n    end\r\n\r\nalways @(contador2)\r\n    begin\r\n      led <=(contador2 >5)? 0:1; //si el secundero es mayor que 5 se enciende sino no\r\n    end",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "led"
                }
              ]
            }
          },
          "position": {
            "x": 16,
            "y": -8
          },
          "size": {
            "width": 688,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "4e0884dc-a4fd-4df8-b833-66e209c51156",
            "port": "led"
          },
          "target": {
            "block": "80ca6fc6-88ad-43e5-933e-92e786baaa91",
            "port": "in"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 269.4154,
        "y": 180.8753
      },
      "zoom": 1.036
    }
  },
  "dependencies": {}
}