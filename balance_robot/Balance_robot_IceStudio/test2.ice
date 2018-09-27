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
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "3f17cb7d-50e4-4197-95d9-2328e977fffb",
          "type": "basic.output",
          "data": {
            "name": "led",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED0",
                "value": "45"
              },
              {
                "index": "6",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "5",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "4",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "3",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "2",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "1",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "0",
                "name": "LED7",
                "value": "37"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 872,
            "y": 48
          }
        },
        {
          "id": "451f0e00-ab08-476a-9ea2-df8dbc7cf766",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D6",
                "value": "10"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 880,
            "y": 352
          }
        },
        {
          "id": "40edabc7-b837-4c21-a66d-8145158a02de",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "DD2",
                "value": "116"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 384,
            "y": 360
          }
        },
        {
          "id": "485801f1-b921-46b3-8491-9bde8dda3cd4",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D5",
                "value": "7"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 880,
            "y": 424
          }
        },
        {
          "id": "72331941-dbcf-417d-a250-9d286fe59211",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "DD1",
                "value": "115"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 872,
            "y": 488
          }
        },
        {
          "id": "3920f784-9a97-4226-96cf-c9e7088aab0f",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "D0",
                "value": "2"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 192,
            "y": 520
          }
        },
        {
          "id": "78b4fa89-8c87-4ed9-9e5f-c942e730ba0e",
          "type": "basic.constant",
          "data": {
            "name": "deth",
            "value": "16'd1",
            "local": false
          },
          "position": {
            "x": -208,
            "y": 152
          }
        },
        {
          "id": "04662088-7741-4ec2-95ed-51fa8682b9ea",
          "type": "ce1ee232439c469080aee4d5c1a3b9e1125b04d0",
          "position": {
            "x": 624,
            "y": 368
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "95c95e58-6dbd-4cef-8374-1fc0ff2340d5",
          "type": "c903c9704a3f6cb9207e3183b46d650bde176e73",
          "position": {
            "x": 48,
            "y": 312
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "209f2bdb-6de1-4560-ad73-b18570ee3836",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": -200,
            "y": 432
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7dd8592b-ba32-4e51-863e-7c24df4370d2",
          "type": "a210abb63fdcd96f792e6567f116352bdb6bd14b",
          "position": {
            "x": -208,
            "y": 248
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "40edabc7-b837-4c21-a66d-8145158a02de",
            "port": "out"
          },
          "target": {
            "block": "04662088-7741-4ec2-95ed-51fa8682b9ea",
            "port": "695056ab-9b34-4b75-b4f4-d28e931a98a9"
          }
        },
        {
          "source": {
            "block": "209f2bdb-6de1-4560-ad73-b18570ee3836",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "95c95e58-6dbd-4cef-8374-1fc0ff2340d5",
            "port": "7db0c83e-f877-4693-a1af-f53d5236aa28"
          }
        },
        {
          "source": {
            "block": "7dd8592b-ba32-4e51-863e-7c24df4370d2",
            "port": "cb1fcea6-831e-4d2e-b879-80fd9926e477"
          },
          "target": {
            "block": "95c95e58-6dbd-4cef-8374-1fc0ff2340d5",
            "port": "386471bb-16b5-4897-980e-59ef5e171d28"
          },
          "size": 16
        },
        {
          "source": {
            "block": "78b4fa89-8c87-4ed9-9e5f-c942e730ba0e",
            "port": "constant-out"
          },
          "target": {
            "block": "7dd8592b-ba32-4e51-863e-7c24df4370d2",
            "port": "64d095fc-7dca-4f9d-9c73-9fcd9e0ed0a7"
          }
        },
        {
          "source": {
            "block": "95c95e58-6dbd-4cef-8374-1fc0ff2340d5",
            "port": "a17f6d49-c409-497e-a7f9-96b8c6997008"
          },
          "target": {
            "block": "3920f784-9a97-4226-96cf-c9e7088aab0f",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "04662088-7741-4ec2-95ed-51fa8682b9ea",
            "port": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca"
          },
          "target": {
            "block": "451f0e00-ab08-476a-9ea2-df8dbc7cf766",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "04662088-7741-4ec2-95ed-51fa8682b9ea",
            "port": "527befc1-aab3-45c7-b1b3-e30330205cb4"
          },
          "target": {
            "block": "485801f1-b921-46b3-8491-9bde8dda3cd4",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "40edabc7-b837-4c21-a66d-8145158a02de",
            "port": "out"
          },
          "target": {
            "block": "72331941-dbcf-417d-a250-9d286fe59211",
            "port": "in"
          },
          "vertices": [
            {
              "x": 536,
              "y": 480
            }
          ]
        },
        {
          "source": {
            "block": "04662088-7741-4ec2-95ed-51fa8682b9ea",
            "port": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74"
          },
          "target": {
            "block": "3f17cb7d-50e4-4197-95d9-2328e977fffb",
            "port": "in"
          },
          "vertices": [
            {
              "x": 744,
              "y": 224
            }
          ],
          "size": 8
        }
      ]
    }
  },
  "dependencies": {
    "ce1ee232439c469080aee4d5c1a3b9e1125b04d0": {
      "package": {
        "name": "SerialDataArduino",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez Cerezo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2232%22%20height=%2232%22%20version=%221%22%3E%3Cpath%20opacity=%22.2%22%20d=%22M11%208a9%209%200%200%200-9%209%209%209%200%200%200%209%209%209%209%200%200%200%204.998-1.523A9%209%200%200%200%2021%2026a9%209%200%200%200%209-9%209%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%208z%22/%3E%3Cpath%20fill=%22#19979d%22%20d=%22M11%207a9%209%200%200%200-9%209%209%209%200%200%200%209%209%209%209%200%200%200%204.998-1.523A9%209%200%200%200%2021%2025a9%209%200%200%200%209-9%209%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%207z%22/%3E%3Cpath%20opacity=%22.2%22%20d=%22M10.869%2012c-.634%200-1.266.127-1.853.375-.588.248-1.125.614-1.579%201.076s-.817%201.015-1.064%201.623A5.12%205.12%200%200%200%206%2016.998c0%20.66.126%201.316.373%201.924.247.608.611%201.159%201.065%201.62a4.768%204.768%200%200%200%203.389%201.45l.042.002c1.507.072%202.72-.526%203.61-1.394.607-.594%201.085-1.296%201.521-2.01.436.714.914%201.416%201.522%202.01.888.868%202.102%201.466%203.609%201.394l.043-.002a4.76%204.76%200%200%200%201.81-.373%204.864%204.864%200%200%200%201.578-1.076l.004-.006a4.99%204.99%200%200%200%201.061-1.615c.247-.608.373-1.264.373-1.924s-.126-1.316-.373-1.924l-.006-.01a5.02%205.02%200%200%200-1.059-1.613%204.856%204.856%200%200%200-1.578-1.076A4.768%204.768%200%200%200%2021.131%2012c-1.588%200-2.842.652-3.768%201.561-.535.524-.969%201.124-1.363%201.738-.394-.614-.828-1.214-1.363-1.738-.926-.909-2.18-1.56-3.768-1.56zm.182%202c1.128%200%201.848.38%202.51%201.012.524.5.983%201.181%201.439%201.923-.52.868-1.023%201.66-1.588%202.198-.622.592-1.266.918-2.32.861h-.041a3.076%203.076%200%200%201-2.156-.879l-.012-.01a2.967%202.967%200%200%201-.657-3.246c.15-.358.376-.692.656-.97l.012-.012A3.07%203.07%200%200%201%2011.051%2014zm9.898%200a3.07%203.07%200%200%201%202.156.877l.012.012a2.957%202.957%200%200%201%200%204.216l-.011.01a3.076%203.076%200%200%201-2.157.878h-.04c-1.055.058-1.698-.269-2.32-.86-.566-.538-1.069-1.33-1.589-2.198.456-.743.915-1.424%201.44-1.924C19.1%2014.38%2019.82%2014%2020.95%2014zM20%2015v1h-1v2h1v1h2v-1h1v-2h-1v-1h-2zM9%2016v2h4v-2H9z%22/%3E%3Cpath%20fill=%22#79ff88%22%20d=%22M10.869%2011c-.634%200-1.266.127-1.853.375-.588.248-1.125.614-1.579%201.076s-.817%201.015-1.064%201.623A5.12%205.12%200%200%200%206%2015.998c0%20.66.126%201.316.373%201.924.247.608.611%201.159%201.065%201.62a4.768%204.768%200%200%200%203.389%201.45l.042.002c1.507.072%202.72-.526%203.61-1.394.607-.594%201.085-1.296%201.521-2.01.436.714.914%201.416%201.522%202.01.888.868%202.102%201.466%203.609%201.394l.043-.002a4.76%204.76%200%200%200%201.81-.373%204.864%204.864%200%200%200%201.578-1.076l.004-.006a4.99%204.99%200%200%200%201.061-1.615c.247-.608.373-1.264.373-1.924s-.126-1.316-.373-1.924l-.006-.01a5.02%205.02%200%200%200-1.059-1.613%204.856%204.856%200%200%200-1.578-1.076A4.768%204.768%200%200%200%2021.131%2011c-1.588%200-2.842.652-3.768%201.561-.535.524-.969%201.124-1.363%201.738-.394-.614-.828-1.214-1.363-1.738-.926-.909-2.18-1.56-3.768-1.56zm.182%202c1.128%200%201.848.38%202.51%201.012.524.5.983%201.181%201.439%201.923-.52.868-1.023%201.66-1.588%202.198-.622.592-1.266.918-2.32.861h-.041a3.076%203.076%200%200%201-2.156-.879l-.012-.01a2.967%202.967%200%200%201-.657-3.246c.15-.358.376-.692.656-.97l.012-.012A3.07%203.07%200%200%201%2011.051%2013zm9.898%200a3.07%203.07%200%200%201%202.156.877l.012.012a2.957%202.957%200%200%201%200%204.216l-.011.01a3.076%203.076%200%200%201-2.157.878h-.04c-1.055.058-1.698-.269-2.32-.86-.566-.538-1.069-1.33-1.589-2.198.456-.743.915-1.424%201.44-1.924C19.1%2013.38%2019.82%2013%2020.95%2013zM20%2014v1h-1v2h1v1h2v-1h1v-2h-1v-1h-2zM9%2015v2h4v-2H9z%22/%3E%3Cpath%20fill=%22#fff%22%20opacity=%22.2%22%20d=%22M11%207a9%209%200%200%200-9%209%209%209%200%200%200%20.021.424A9%209%200%200%201%2011%208a9%209%200%200%201%205.002%201.523A9%209%200%200%201%2021%208a9%209%200%200%201%208.979%208.576A9%209%200%200%200%2030%2016a9%209%200%200%200-9-9%209%209%200%200%200-4.998%201.523A9%209%200%200%200%2011%207z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74",
              "type": "basic.output",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1112,
                "y": -272
              }
            },
            {
              "id": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca",
              "type": "basic.output",
              "data": {
                "name": "clock_data_debug"
              },
              "position": {
                "x": 480,
                "y": -272
              }
            },
            {
              "id": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
              "type": "basic.input",
              "data": {
                "name": "serial_data",
                "clock": false
              },
              "position": {
                "x": -856,
                "y": -40
              }
            },
            {
              "id": "527befc1-aab3-45c7-b1b3-e30330205cb4",
              "type": "basic.output",
              "data": {
                "name": "byte_ready"
              },
              "position": {
                "x": 1152,
                "y": 216
              }
            },
            {
              "id": "d4a68ff1-27b2-495b-a45f-39ade7eec2ae",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -872,
                "y": 320
              }
            },
            {
              "id": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
              "type": "basic.code",
              "data": {
                "code": "reg [9:0] count = 10'd0;\r\nreg[2:0] bits_data= 3'd0;\r\nreg clock_data_reg = 1'd0;\r\nreg bit_ready_reg = 1'b0;\r\nreg flag = 1'b1;\r\nreg start = 1'b0;\r\nlocalparam IDLE=4'd0;\r\nlocalparam START=4'd1;\r\nlocalparam DATAS=4'd2;\r\nlocalparam STOP=4'd3;\r\nlocalparam CONTROL_DATA=4'd4;\r\n\r\nreg [3:0] state = IDLE;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n    case(state)\r\n    IDLE:\r\n    begin\r\n        state<= (serial_data==1'b0) ? START:IDLE;\r\n    end\r\n    START:\r\n    begin\r\n        clock_data_reg<= 1'b0;\r\n        if(count==10'd624)\r\n        begin\r\n            count<=10'd0;\r\n            state<=DATAS;\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            state<= START;\r\n        end\r\n    end\r\n    DATAS:\r\n    begin\r\n        clock_data_reg<= flag;\r\n        if(count==10'd624)\r\n        begin\r\n            count<=10'd0;\r\n            bits_data<= bits_data+3'd1; //esto solo debe suceder 8 veces, por eso vamos a otro estado que lo controle\r\n            flag<=!flag; // en realidad es solo visual, daria igual dejarlo siempre igual\r\n            state<= CONTROL_DATA; //vamos al estado que controla si volvemos aqui o nos vamos a stop\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            bit_ready_reg<= (count>10'd300 && count<10'd320)? 1:0;//esto solo nos informa de que ya podemos coger un bit, guay\r\n            state<= DATAS;\r\n        end \r\n    end\r\n    STOP:\r\n    begin\r\n        clock_data_reg<= 1'b1;\r\n        if(count==10'd600)\r\n        begin\r\n            count<=10'd0;\r\n            state<=IDLE;\r\n        end\r\n        else begin\r\n            count<= count+10'd1;\r\n            state<= STOP;\r\n        end\r\n    end\r\n    CONTROL_DATA:\r\n    begin\r\n       state<=(bits_data==0)?STOP:DATAS; \r\n    end\r\n    endcase\r\nend\r\n\r\nassign clock_data = clock_data_reg;\r\nassign ready = bit_ready_reg;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "serial_data"
                    },
                    {
                      "name": "clock"
                    }
                  ],
                  "out": [
                    {
                      "name": "clock_data"
                    },
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": -376,
                "y": -192
              },
              "size": {
                "width": 752,
                "height": 720
              }
            },
            {
              "id": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] data_reg = 8'd0;\nreg [2:0] count_bits = 3'd7;\nreg byte_ready_reg = 1'b1;\n\nalways@(negedge ready)\nbegin \n    data_reg[count_bits]<= serial_data;\n    byte_ready_reg<=(count_bits==3'd7)?1:0 ;\nend\n\nalways@(posedge ready)\nbegin \n    count_bits<= count_bits+3'd1;\nend\n\nassign data = data_reg;\nassign byte_ready = byte_ready_reg;\n\n//en este bloque vamos cogiendo los bits hasta qie llegemos al byte",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock_data"
                    },
                    {
                      "name": "ready"
                    },
                    {
                      "name": "serial_data"
                    }
                  ],
                  "out": [
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "byte_ready"
                    }
                  ]
                }
              },
              "position": {
                "x": 528,
                "y": 64
              },
              "size": {
                "width": 528,
                "height": 416
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d4a68ff1-27b2-495b-a45f-39ade7eec2ae",
                "port": "out"
              },
              "target": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "clock_data"
              },
              "target": {
                "block": "bd4e8cb7-83aa-4bcd-b152-e21fed55adca",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "clock_data"
              },
              "target": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "clock_data"
              }
            },
            {
              "source": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "data"
              },
              "target": {
                "block": "c353e4bb-a7b8-4b4c-ac53-13a5aa2fcb74",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
                "port": "out"
              },
              "target": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "serial_data"
              }
            },
            {
              "source": {
                "block": "462bbe62-03be-436b-b5bf-dd5dd5f8fc7a",
                "port": "ready"
              },
              "target": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "ready"
              },
              "vertices": [
                {
                  "x": 440,
                  "y": 328
                }
              ]
            },
            {
              "source": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "byte_ready"
              },
              "target": {
                "block": "527befc1-aab3-45c7-b1b3-e30330205cb4",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "695056ab-9b34-4b75-b4f4-d28e931a98a9",
                "port": "out"
              },
              "target": {
                "block": "ab2f4af6-ecd7-4f28-a2f0-1a46942b6596",
                "port": "serial_data"
              },
              "vertices": [
                {
                  "x": 360,
                  "y": 576
                }
              ]
            }
          ]
        }
      }
    },
    "c903c9704a3f6cb9207e3183b46d650bde176e73": {
      "package": {
        "name": "CONTROLLER_PWM",
        "version": "",
        "description": "",
        "author": "",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20512%20512%22%3E%3Cg%20fill=%22#f2f2f2%22%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22256%22/%3E%3Cpath%20d=%22M256%20256zM256%20256zM256%20256zM256%20256zM256%20256zM256%20256z%22/%3E%3C/g%3E%3Cpath%20d=%22M481.067%20256H393.6c0-25.6-6.4-48-18.133-69.333-11.733-21.333-29.867-38.4-50.133-50.133L369.067%2060.8C403.2%2081.067%20432%20108.8%20451.2%20142.933c18.133%2034.134%2029.867%2072.534%2029.867%20113.067z%22%20fill=%22#f8b64c%22/%3E%3Cpath%20d=%22M481.067%20256c0%2040.533-10.667%2078.933-29.867%20112-19.2%2034.133-48%2062.933-82.133%2082.133L325.333%20374.4c21.333-11.733%2038.4-29.867%2050.133-50.133C387.2%20304%20393.6%20280.533%20393.6%20254.933h87.467V256z%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M186.667%20136.533c-21.333%2011.733-38.4%2029.867-50.133%2050.133C124.8%20206.933%20118.4%20230.4%20118.4%20256H30.933c0-40.533%2010.667-78.933%2029.867-112%2019.2-34.133%2048-62.933%2082.133-82.133l43.734%2074.666z%22%20fill=%22#54c0eb%22/%3E%3Cpath%20d=%22M186.667%20375.467L142.933%20451.2C108.8%20432%2080%20403.2%2060.8%20369.067%2042.667%20334.933%2030.933%20296.533%2030.933%20256H118.4c0%2025.6%206.4%2049.067%2018.133%2069.333a160.656%20160.656%200%200%200%2050.134%2050.134z%22%20fill=%22#84dbff%22/%3E%3Cpath%20d=%22M368%2061.867L324.267%20137.6c-20.267-11.733-43.733-18.133-69.333-18.133s-48%206.4-69.333%2018.133l-43.733-75.733c35.2-19.2%2073.6-30.933%20114.133-30.933S334.933%2042.667%20368%2061.867z%22%20fill=%22#ffd15c%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22256%22%20r=%22137.6%22%20fill=%22#f2f2f2%22/%3E%3Cpath%20d=%22M273.067%20230.4c12.8%209.6%2016%2027.733%207.467%2040.533-9.6%2012.8-27.733%2016-40.533%207.467-12.8-9.6-87.467-96-87.467-96s106.666%2038.4%20120.533%2048z%22%20fill=%22#40596b%22/%3E%3Ccircle%20cx=%22256%22%20cy=%22253.867%22%20r=%2217.067%22%20fill=%22#ff7058%22/%3E%3Cpath%20d=%22M256%2052.267c120.533%200%20218.667%2094.933%20224%20214.4%200-3.2%201.067-7.467%201.067-10.667C481.067%20132.267%20380.8%2030.933%20256%2030.933S30.933%20132.267%2030.933%20256c0%203.2%200%207.467%201.067%2010.667%205.333-119.467%20103.467-214.4%20224-214.4z%22%20opacity=%22.15%22%20fill=%22#40596b%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "386471bb-16b5-4897-980e-59ef5e171d28",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": 32,
                "y": -16
              }
            },
            {
              "id": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -112,
                "y": 88
              }
            },
            {
              "id": "a17f6d49-c409-497e-a7f9-96b8c6997008",
              "type": "basic.output",
              "data": {
                "name": "PWM"
              },
              "position": {
                "x": 512,
                "y": 232
              }
            },
            {
              "id": "7db0c83e-f877-4693-a1af-f53d5236aa28",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -64,
                "y": 240
              }
            },
            {
              "id": "ffb28a52-c794-4738-a562-c5b38e0373e9",
              "type": "526c3eb1e8d5b28ea787c8321375abc423be2fe2",
              "position": {
                "x": 320,
                "y": 200
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "63a66901-b384-423f-9b70-76f155bebb40"
              },
              "target": {
                "block": "a17f6d49-c409-497e-a7f9-96b8c6997008",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "af2dc11f-2f3f-4871-939a-7290ce59e7d5",
                "port": "out"
              },
              "target": {
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "159fd93f-0f27-4956-93b1-1343b7692189"
              }
            },
            {
              "source": {
                "block": "7db0c83e-f877-4693-a1af-f53d5236aa28",
                "port": "out"
              },
              "target": {
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "8b33b8c2-e685-4d38-b041-0d9fae82e57f"
              }
            },
            {
              "source": {
                "block": "386471bb-16b5-4897-980e-59ef5e171d28",
                "port": "out"
              },
              "target": {
                "block": "ffb28a52-c794-4738-a562-c5b38e0373e9",
                "port": "1f30916c-b512-4417-bb91-c5af740aa502"
              },
              "size": 16
            }
          ]
        }
      }
    },
    "526c3eb1e8d5b28ea787c8321375abc423be2fe2": {
      "package": {
        "name": "PWM_CONTROLLER",
        "version": "1.0.0",
        "description": "",
        "author": "",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "159fd93f-0f27-4956-93b1-1343b7692189",
              "type": "basic.input",
              "data": {
                "name": "clock",
                "clock": true
              },
              "position": {
                "x": -200,
                "y": -320
              }
            },
            {
              "id": "63a66901-b384-423f-9b70-76f155bebb40",
              "type": "basic.output",
              "data": {
                "name": "PWM"
              },
              "position": {
                "x": 1232,
                "y": -144
              }
            },
            {
              "id": "1f30916c-b512-4417-bb91-c5af740aa502",
              "type": "basic.input",
              "data": {
                "name": "velocity",
                "range": "[15:0]",
                "clock": false,
                "size": 16
              },
              "position": {
                "x": -200,
                "y": -144
              }
            },
            {
              "id": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 24
              }
            },
            {
              "id": "50d5caeb-e74a-4756-a919-8a5f8399271d",
              "type": "basic.code",
              "data": {
                "code": "localparam pulses_nedded = 16'd7000; \r\n\r\nreg [15:0] pulses_nedded_velocity = 16'd0; //24009 maximo\r\nreg [15:0] count = 0; \r\nreg T = 0;\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  count <= (count == pulses_nedded-1) ? 0: count+1;\r\n  pulses_nedded_velocity <= ((velocity/16'd9) >=pulses_nedded) ? pulses_nedded: (velocity/16'd9);\r\n\r\nend\r\n\r\nalways @(posedge clock)\r\nbegin\r\n  if(start==1'b1)\r\n    T <= (count <= pulses_nedded_velocity) ? 1:0;\r\nend\r\nassign PWM = T;\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clock"
                    },
                    {
                      "name": "velocity",
                      "range": "[15:0]",
                      "size": 16
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "PWM"
                    }
                  ]
                }
              },
              "position": {
                "x": -8,
                "y": -368
              },
              "size": {
                "width": 1136,
                "height": 512
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "159fd93f-0f27-4956-93b1-1343b7692189",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "clock"
              }
            },
            {
              "source": {
                "block": "8b33b8c2-e685-4d38-b041-0d9fae82e57f",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "PWM"
              },
              "target": {
                "block": "63a66901-b384-423f-9b70-76f155bebb40",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1f30916c-b512-4417-bb91-c5af740aa502",
                "port": "out"
              },
              "target": {
                "block": "50d5caeb-e74a-4756-a919-8a5f8399271d",
                "port": "velocity"
              },
              "size": 16
            }
          ]
        }
      }
    },
    "c83dcd1d9ab420d911df81b3dfae04681559c623": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "a210abb63fdcd96f792e6567f116352bdb6bd14b": {
      "package": {
        "name": "ASSIGN",
        "version": "v1.0.0",
        "description": "",
        "author": "Juan Ordoñez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20490.423%20490.423%22%3E%3Cpath%20d=%22M483.248%20366.926l-97.8-88.4c-8.3-8.3-21.8-7.3-29.1%201-8.3%208.3-7.3%2021.8%201%2029.1l58%2052h-32c-139.4%200-252.8-113.4-252.8-252.8v-33l52%2058c8.3%208.3%2020.8%208.3%2029.1%201%208.3-8.3%208.3-20.8%201-29.1l-88.4-97.8c-7.3-8.3-22.9-8.3-30.2%200l-88.3%2097.9c-8.3%208.3-7.3%2021.8%201%2029.1%2010.9%208.8%2025.1%205.3%2030.2-1l52-58v33c0%20162.3%20131.1%20293.4%20293.4%20293.4h34.2l-59.1%2053.1c-8.3%208.3-8.3%2020.8-1%2029.1%2011%2010.2%2024.9%205.8%2029.1%201l97.8-86.3c9.4-7.6%209.5-21.9-.1-31.3z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cb1fcea6-831e-4d2e-b879-80fd9926e477",
              "type": "basic.output",
              "data": {
                "name": "out",
                "range": "[15:0]",
                "size": 16
              },
              "position": {
                "x": 528,
                "y": 200
              }
            },
            {
              "id": "64d095fc-7dca-4f9d-9c73-9fcd9e0ed0a7",
              "type": "basic.constant",
              "data": {
                "name": "in",
                "value": "16'd0",
                "local": false
              },
              "position": {
                "x": 304,
                "y": 56
              }
            },
            {
              "id": "329ad7c4-5f98-4ac9-acd7-5e944fe47f30",
              "type": "basic.code",
              "data": {
                "code": "assign out=in;",
                "params": [
                  {
                    "name": "in"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "out",
                      "range": "[15:0]",
                      "size": 16
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 168
              },
              "size": {
                "width": 192,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "64d095fc-7dca-4f9d-9c73-9fcd9e0ed0a7",
                "port": "constant-out"
              },
              "target": {
                "block": "329ad7c4-5f98-4ac9-acd7-5e944fe47f30",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "329ad7c4-5f98-4ac9-acd7-5e944fe47f30",
                "port": "out"
              },
              "target": {
                "block": "cb1fcea6-831e-4d2e-b879-80fd9926e477",
                "port": "in"
              },
              "size": 16
            }
          ]
        }
      }
    }
  }
}