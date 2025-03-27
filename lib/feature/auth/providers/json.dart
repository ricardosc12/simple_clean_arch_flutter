const Map<String, dynamic> DOC_JSON = {
  "ar": "1000000001932025533196250307224991000135",
  "tipo_doc": "DEVOLUCAO",
  "chave": "1000000001932025533196250307224991000135",
  "status": "EXPEDICAO",
  "numero": "1932025533196",
  "dt_emis": "19/03/2025 11:22",
  "cnpj_remete": "07224991000135",
  "nome_remete": "NAZARIA DISTRIBUIDORA DE PRODUTOS FARMACEUTICOS LTDA",
  "rota": {
    "id": "693725ef7cd55945d6d798ed0fd1a337",
    "nome": "PENDêNCIAS - CAPITAL",
    "pos_entrega": 9,
  },
  "cnpj_dest": "15105206000153",
  "nome_dest": "667897 - FARMACIA SAUDE DO TRABALHADOR",
  "num_alt": "1932025533196",
  "romaneio": {
    "numero": "RCF-079249",
    "hash": "88831d8dd786954c27a19dc97bdd4b4c",
    "tipo": "ENTREGA",
    "dt_rom": "2025-03-25 18:32:40",
    "criador": {"nome": "ALINE TEODORO DE SOUZA", "cpf": "08684961463"},
    "rom_sistema": true,
    "base": "RECIFE",
    "cpf_motorista": "07367146424",
    "nome_motorista": "EVERSON RODRIGUES FERREIRA",
    "pos_entrega": 0,
  },
  "envolvidos": {
    "NAZARIA": "NAZARIA DISTRIBUIDORA DE PRODUTOS FARMACEUTICOS LTDA",
    "JM": "NAZARIA DISTRIBUIDORA DE PRODUTOS FARMACEUTICOS LTDA",
  },
  "grupo": {
    "grupo_emp": "JM",
    "nome_empresa": "NAZARIA DISTRIBUIDORA DE PRODUTOS FARMACEUTICOS LTDA",
    "cnpj_empresa": "07224991000135",
    "embarcador": {"cnpj_empresa": "2025533196250"},
    "entregador": {
      "cnpj_empresa": "10908192000192",
      "nome_empresa": "J M EXPRESS SERVICOS DE TRANSPORTES EIRELI",
      "grupo": "JM",
    },
  },
  "volumes": "1",
  "dest": {
    "cod": "15105206000153",
    "num_doc": "15105206000153",
    "bairro": {
      "nome": "NOVA DESCOBERTA",
      "cod": "ce6c4b5e54d6ad8acd72af944a1cfb9e",
    },
    "end": {
      "cep": "52081010",
      "num": "506",
      "log": "R LUIZ CESARIO DE MELO - 506 - RECIFE-PE",
    },
    "cidade": {"nome": "RECIFE", "cod": "2611606"},
    "nome": "667897 - FARMACIA SAUDE DO TRABALHADOR",
    "estado": {"cod": "26", "sigla": "PE", "nome": "PERNAMBUCO"},
    "prazos": {
      "DAMASIO": {
        "dias": ["seg", "ter", "qua", "qui", "sex"],
        "tipo": "DIAS",
        "corte": "24",
      },
      "TWFLOG": {
        "dias": ["seg", "ter", "qua", "qui", "sex"],
        "tipo": "HORAS",
        "corte": "120",
      },
    },
    "regiao": {"cod": "2", "nome": "NORDESTE"},
    "meso": {"cod": "2605", "nome": "METROPOLITANA DE RECIFE"},
    "micro": {"cod": "26017", "nome": "RECIFE"},
    "end_comp":
        "R LUIZ CESARIO DE MELO - 506 - RECIFE-PE - NOVA DESCOBERTA - 52081010",
  },
};

const Map<String, dynamic> DOC_PARAM = {
  "cpf_motorista": "07367146424",
  "grupos_emp": {
    "JM": {
      "grupo": "JM",
      "bases": {
        "RECIFE": {
          "nome": "RECIFE",
          "sigla": "RCF",
          "modulos": {
            "app_motorista": {
              "ativo": true,
              "app_motorista": true,
              "pers": {"autovalidar_rom": true},
              "pers_emp": {"autovalidar_rom": true, "exigir_comprovacao": true},
            },
          },
          "cnpjs": ["10908192000192"],
          "comprovar_devolucao": ["07224991001298"],
        },
      },
    },
  },
  "tipo": 1,
  "cpf": "05120889425",
  "imei": "99b6fcede597c30a",
  "dispositivo": "sdk_gphone64_x86_64",
  "versao": "2.1.5",
  "app": "Azapfy Motoristas - Flutter",
  "build": "53",
  "time": "2025-03-18 17:29:58",
  "timezone": "GMT",
};
