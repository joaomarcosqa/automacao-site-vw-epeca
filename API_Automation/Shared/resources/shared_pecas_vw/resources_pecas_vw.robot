Documentation
... Suíte com recursos da PECAS VW

*** Settings ***
Library     RequestsLibrary
Library     Collections
Library     ${EXECDIR}/API_Automation/Shared/resources/shared_pecas_vw/parametros_pecas_vw.py
Library     JSONLibrary

***Keywords***
DADO que eu me conecte ao WebService - PECAS VW
    Sleep                       1

QUANDO acessar a minha conta - PECAS VW
    Sleep                       1

ENTÃO devo verificar as lojas prioritárias de SP - PECAS VW
    &{body}             Pecas Vw Geolocalizacao 1
    ${response}         POST        ${HOST_PECAS_VW}          json=${body}
    ${item}         Set Variable        ${response.json()}
    ${loja_00}      Get Value From Json         ${item}         $.data.lojas_prioritarias[0]
    ${loja_01}      Get Value From Json         ${item}         $.data.lojas_prioritarias[1]
    ${loja_02}      Get Value From Json         ${item}         $.data.lojas_prioritarias[2]
    ${loja_03}      Get Value From Json         ${item}         $.data.lojas_prioritarias[3]
    ${loja_04}      Get Value From Json         ${item}         $.data.lojas_prioritarias[4]
    ${loja_05}      Get Value From Json         ${item}         $.data.lojas_prioritarias[5]
    ${loja_06}      Get Value From Json         ${item}         $.data.lojas_prioritarias[6]
    ${loja_07}      Get Value From Json         ${item}         $.data.lojas_prioritarias[7]
    ${loja_08}      Get Value From Json         ${item}         $.data.lojas_prioritarias[8]
    ${loja_09}      Get Value From Json         ${item}         $.data.lojas_prioritarias[9]
    ${loja_10}      Get Value From Json         ${item}         $.data.lojas_prioritarias[10]
    ${loja_11}      Get Value From Json         ${item}         $.data.lojas_prioritarias[11]
    ${loja_12}      Get Value From Json         ${item}         $.data.lojas_prioritarias[12]
    ${loja_13}      Get Value From Json         ${item}         $.data.lojas_prioritarias[13]
    ${loja_14}      Get Value From Json         ${item}         $.data.lojas_prioritarias[14]
    ${loja_15}      Get Value From Json         ${item}         $.data.lojas_prioritarias[15]
    ${loja_16}      Get Value From Json         ${item}         $.data.lojas_prioritarias[16]
    ${loja_17}      Get Value From Json         ${item}         $.data.lojas_prioritarias[17]
    ${loja_18}      Get Value From Json         ${item}         $.data.lojas_prioritarias[18]
    ${loja_19}      Get Value From Json         ${item}         $.data.lojas_prioritarias[19]
    ${loja_20}      Get Value From Json         ${item}         $.data.lojas_prioritarias[20]
    ${loja_21}      Get Value From Json         ${item}         $.data.lojas_prioritarias[21]
    ${loja_22}      Get Value From Json         ${item}         $.data.lojas_prioritarias[22]
    ${loja_23}      Get Value From Json         ${item}         $.data.lojas_prioritarias[23]
    ${loja_24}      Get Value From Json         ${item}         $.data.lojas_prioritarias[24]
    ${loja_25}      Get Value From Json         ${item}         $.data.lojas_prioritarias[25]
    ${loja_26}      Get Value From Json         ${item}         $.data.lojas_prioritarias[26]
    ${loja_27}      Get Value From Json         ${item}         $.data.lojas_prioritarias[27]
    ${loja_28}      Get Value From Json         ${item}         $.data.lojas_prioritarias[28]
    ${loja_29}      Get Value From Json         ${item}         $.data.lojas_prioritarias[29]
    ${valor_00}         Convert To Number       230
    ${valor_01}         Convert To Number       241
    ${valor_02}         Convert To Number       226
    ${valor_03}         Convert To Number       240
    ${valor_04}         Convert To Number       223
    ${valor_05}         Convert To Number       224
    ${valor_06}         Convert To Number       218
    ${valor_07}         Convert To Number       231
    ${valor_08}         Convert To Number       229
    ${valor_09}         Convert To Number       215
    ${valor_10}         Convert To Number       221
    ${valor_11}         Convert To Number       216
    ${valor_12}         Convert To Number       228
    ${valor_13}         Convert To Number       238
    ${valor_14}         Convert To Number       234
    ${valor_15}         Convert To Number       219
    ${valor_16}         Convert To Number       237
    ${valor_17}         Convert To Number       252
    ${valor_18}         Convert To Number       235
    ${valor_19}         Convert To Number       236
    ${valor_20}         Convert To Number       217
    ${valor_21}         Convert To Number       220
    ${valor_22}         Convert To Number       244
    ${valor_23}         Convert To Number       253
    ${valor_24}         Convert To Number       248
    ${valor_25}         Convert To Number       246
    ${valor_26}         Convert To Number       249
    ${valor_27}         Convert To Number       250
    ${valor_28}         Convert To Number       243
    ${valor_29}         Convert To Number       245

    Should contain      ${loja_00}      ${valor_00}
    Should contain      ${loja_01}      ${valor_01}
    Should contain      ${loja_02}      ${valor_02}
    Should contain      ${loja_03}      ${valor_03}
    Should contain      ${loja_04}      ${valor_04}
    Should contain      ${loja_05}      ${valor_05}
    Should contain      ${loja_06}      ${valor_06}
    Should contain      ${loja_07}      ${valor_07}
    Should contain      ${loja_08}      ${valor_08}
    Should contain      ${loja_09}      ${valor_09}
    Should contain      ${loja_10}      ${valor_10}
    Should contain      ${loja_11}      ${valor_11}
    Should contain      ${loja_12}      ${valor_12}
    Should contain      ${loja_13}      ${valor_13}
    Should contain      ${loja_14}      ${valor_14}
    Should contain      ${loja_15}      ${valor_15}
    Should contain      ${loja_16}      ${valor_16}
    Should contain      ${loja_17}      ${valor_17}
    Should contain      ${loja_18}      ${valor_18}
    Should contain      ${loja_19}      ${valor_19}
    Should contain      ${loja_20}      ${valor_20}
    Should contain      ${loja_21}      ${valor_21}
    Should contain      ${loja_22}      ${valor_22}
    Should contain      ${loja_23}      ${valor_23}
    Should contain      ${loja_24}      ${valor_24}
    Should contain      ${loja_25}      ${valor_25}
    Should contain      ${loja_26}      ${valor_26}
    Should contain      ${loja_27}      ${valor_27}
    Should contain      ${loja_28}      ${valor_28}
    Should contain      ${loja_29}      ${valor_29}

ENTÃO devo verificar as lojas prioritárias de RJ - PECAS VW
    &{body}             Pecas Vw Geolocalizacao 2
    ${response}         POST        ${HOST_PECAS_VW}          json=${body}
    ${item}         Set Variable        ${response.json()}
    ${loja_00}      Get Value From Json         ${item}         $.data.lojas_prioritarias[0]
    ${loja_01}      Get Value From Json         ${item}         $.data.lojas_prioritarias[1]
    ${loja_02}      Get Value From Json         ${item}         $.data.lojas_prioritarias[2]
    ${loja_03}      Get Value From Json         ${item}         $.data.lojas_prioritarias[3]
    ${loja_04}      Get Value From Json         ${item}         $.data.lojas_prioritarias[4]
    ${loja_05}      Get Value From Json         ${item}         $.data.lojas_prioritarias[5]
    ${loja_06}      Get Value From Json         ${item}         $.data.lojas_prioritarias[6]
    ${loja_07}      Get Value From Json         ${item}         $.data.lojas_prioritarias[7]
    ${loja_08}      Get Value From Json         ${item}         $.data.lojas_prioritarias[8]
    ${loja_09}      Get Value From Json         ${item}         $.data.lojas_prioritarias[9]
    ${loja_10}      Get Value From Json         ${item}         $.data.lojas_prioritarias[10]
    ${loja_11}      Get Value From Json         ${item}         $.data.lojas_prioritarias[11]
    ${loja_12}      Get Value From Json         ${item}         $.data.lojas_prioritarias[12]
    ${loja_13}      Get Value From Json         ${item}         $.data.lojas_prioritarias[13]
    ${loja_14}      Get Value From Json         ${item}         $.data.lojas_prioritarias[14]
    ${loja_15}      Get Value From Json         ${item}         $.data.lojas_prioritarias[15]
    ${loja_16}      Get Value From Json         ${item}         $.data.lojas_prioritarias[16]
    ${loja_17}      Get Value From Json         ${item}         $.data.lojas_prioritarias[17]
    ${loja_18}      Get Value From Json         ${item}         $.data.lojas_prioritarias[18]
    ${loja_19}      Get Value From Json         ${item}         $.data.lojas_prioritarias[19]
    ${loja_20}      Get Value From Json         ${item}         $.data.lojas_prioritarias[20]
    ${loja_21}      Get Value From Json         ${item}         $.data.lojas_prioritarias[21]
    ${loja_22}      Get Value From Json         ${item}         $.data.lojas_prioritarias[22]
    ${loja_23}      Get Value From Json         ${item}         $.data.lojas_prioritarias[23]
    ${loja_24}      Get Value From Json         ${item}         $.data.lojas_prioritarias[24]
    ${loja_25}      Get Value From Json         ${item}         $.data.lojas_prioritarias[25]
    ${loja_26}      Get Value From Json         ${item}         $.data.lojas_prioritarias[26]
    ${loja_27}      Get Value From Json         ${item}         $.data.lojas_prioritarias[27]
    ${loja_28}      Get Value From Json         ${item}         $.data.lojas_prioritarias[28]
    ${loja_29}      Get Value From Json         ${item}         $.data.lojas_prioritarias[29]
    ${valor_00}         Convert To Number       238
    ${valor_01}         Convert To Number       234
    ${valor_02}         Convert To Number       229
    ${valor_03}         Convert To Number       228
    ${valor_04}         Convert To Number       231
    ${valor_05}         Convert To Number       237
    ${valor_06}         Convert To Number       235
    ${valor_07}         Convert To Number       236
    ${valor_08}         Convert To Number       244
    ${valor_09}         Convert To Number       252
    ${valor_10}         Convert To Number       230
    ${valor_11}         Convert To Number       226
    ${valor_12}         Convert To Number       241
    ${valor_13}         Convert To Number       253
    ${valor_14}         Convert To Number       240
    ${valor_15}         Convert To Number       223
    ${valor_16}         Convert To Number       224
    ${valor_17}         Convert To Number       243
    ${valor_18}         Convert To Number       246
    ${valor_19}         Convert To Number       218
    ${valor_20}         Convert To Number       215
    ${valor_21}         Convert To Number       221
    ${valor_22}         Convert To Number       216
    ${valor_23}         Convert To Number       219
    ${valor_24}         Convert To Number       245
    ${valor_25}         Convert To Number       217
    ${valor_26}         Convert To Number       248
    ${valor_27}         Convert To Number       220
    ${valor_28}         Convert To Number       250
    ${valor_29}         Convert To Number       249

    Should contain      ${loja_00}      ${valor_00}
    Should contain      ${loja_01}      ${valor_01}
    Should contain      ${loja_02}      ${valor_02}
    Should contain      ${loja_03}      ${valor_03}
    Should contain      ${loja_04}      ${valor_04}
    Should contain      ${loja_05}      ${valor_05}
    Should contain      ${loja_06}      ${valor_06}
    Should contain      ${loja_07}      ${valor_07}
    Should contain      ${loja_08}      ${valor_08}
    Should contain      ${loja_09}      ${valor_09}
    Should contain      ${loja_10}      ${valor_10}
    Should contain      ${loja_11}      ${valor_11}
    Should contain      ${loja_12}      ${valor_12}
    Should contain      ${loja_13}      ${valor_13}
    Should contain      ${loja_14}      ${valor_14}
    Should contain      ${loja_15}      ${valor_15}
    Should contain      ${loja_16}      ${valor_16}
    Should contain      ${loja_17}      ${valor_17}
    Should contain      ${loja_18}      ${valor_18}
    Should contain      ${loja_19}      ${valor_19}
    Should contain      ${loja_20}      ${valor_20}
    Should contain      ${loja_21}      ${valor_21}
    Should contain      ${loja_22}      ${valor_22}
    Should contain      ${loja_23}      ${valor_23}
    Should contain      ${loja_24}      ${valor_24}
    Should contain      ${loja_25}      ${valor_25}
    Should contain      ${loja_26}      ${valor_26}
    Should contain      ${loja_27}      ${valor_27}
    Should contain      ${loja_28}      ${valor_28}
    Should contain      ${loja_29}      ${valor_29}

ENTÃO devo verificar as lojas prioritárias de GO - PECAS VW
    &{body}             Pecas Vw Geolocalizacao 3
    ${response}         POST        ${HOST_PECAS_VW}          json=${body}
    ${item}         Set Variable        ${response.json()}
    ${loja_00}      Get Value From Json         ${item}         $.data.lojas_prioritarias[0]
    ${loja_01}      Get Value From Json         ${item}         $.data.lojas_prioritarias[1]
    ${loja_02}      Get Value From Json         ${item}         $.data.lojas_prioritarias[2]
    ${loja_03}      Get Value From Json         ${item}         $.data.lojas_prioritarias[3]
    ${loja_04}      Get Value From Json         ${item}         $.data.lojas_prioritarias[4]
    ${loja_05}      Get Value From Json         ${item}         $.data.lojas_prioritarias[5]
    ${loja_06}      Get Value From Json         ${item}         $.data.lojas_prioritarias[6]
    ${loja_07}      Get Value From Json         ${item}         $.data.lojas_prioritarias[7]
    ${loja_08}      Get Value From Json         ${item}         $.data.lojas_prioritarias[8]
    ${loja_09}      Get Value From Json         ${item}         $.data.lojas_prioritarias[9]
    ${loja_10}      Get Value From Json         ${item}         $.data.lojas_prioritarias[10]
    ${loja_11}      Get Value From Json         ${item}         $.data.lojas_prioritarias[11]
    ${loja_12}      Get Value From Json         ${item}         $.data.lojas_prioritarias[12]
    ${loja_13}      Get Value From Json         ${item}         $.data.lojas_prioritarias[13]
    ${loja_14}      Get Value From Json         ${item}         $.data.lojas_prioritarias[14]
    ${loja_15}      Get Value From Json         ${item}         $.data.lojas_prioritarias[15]
    ${loja_16}      Get Value From Json         ${item}         $.data.lojas_prioritarias[16]
    ${loja_17}      Get Value From Json         ${item}         $.data.lojas_prioritarias[17]
    ${loja_18}      Get Value From Json         ${item}         $.data.lojas_prioritarias[18]
    ${loja_19}      Get Value From Json         ${item}         $.data.lojas_prioritarias[19]
    ${loja_20}      Get Value From Json         ${item}         $.data.lojas_prioritarias[20]
    ${loja_21}      Get Value From Json         ${item}         $.data.lojas_prioritarias[21]
    ${loja_22}      Get Value From Json         ${item}         $.data.lojas_prioritarias[22]
    ${loja_23}      Get Value From Json         ${item}         $.data.lojas_prioritarias[23]
    ${loja_24}      Get Value From Json         ${item}         $.data.lojas_prioritarias[24]
    ${loja_25}      Get Value From Json         ${item}         $.data.lojas_prioritarias[25]
    ${loja_26}      Get Value From Json         ${item}         $.data.lojas_prioritarias[26]
    ${loja_27}      Get Value From Json         ${item}         $.data.lojas_prioritarias[27]
    ${loja_28}      Get Value From Json         ${item}         $.data.lojas_prioritarias[28]
    ${loja_29}      Get Value From Json         ${item}         $.data.lojas_prioritarias[29]
    ${valor_00}         Convert To Number       248
    ${valor_01}         Convert To Number       250
    ${valor_02}         Convert To Number       249
    ${valor_03}         Convert To Number       224
    ${valor_04}         Convert To Number       223
    ${valor_05}         Convert To Number       252
    ${valor_06}         Convert To Number       230
    ${valor_07}         Convert To Number       246
    ${valor_08}         Convert To Number       240
    ${valor_09}         Convert To Number       220
    ${valor_10}         Convert To Number       241
    ${valor_11}         Convert To Number       217
    ${valor_12}         Convert To Number       226
    ${valor_13}         Convert To Number       228
    ${valor_14}         Convert To Number       231
    ${valor_15}         Convert To Number       229
    ${valor_16}         Convert To Number       238
    ${valor_17}         Convert To Number       234
    ${valor_18}         Convert To Number       244
    ${valor_19}         Convert To Number       219
    ${valor_20}         Convert To Number       243
    ${valor_21}         Convert To Number       245
    ${valor_22}         Convert To Number       237
    ${valor_23}         Convert To Number       236
    ${valor_24}         Convert To Number       253
    ${valor_25}         Convert To Number       215
    ${valor_26}         Convert To Number       221
    ${valor_27}         Convert To Number       216
    ${valor_28}         Convert To Number       218
    ${valor_29}         Convert To Number       235

    Should contain      ${loja_00}      ${valor_00}
    Should contain      ${loja_01}      ${valor_01}
    Should contain      ${loja_02}      ${valor_02}
    Should contain      ${loja_03}      ${valor_03}
    Should contain      ${loja_04}      ${valor_04}
    Should contain      ${loja_05}      ${valor_05}
    Should contain      ${loja_06}      ${valor_06}
    Should contain      ${loja_07}      ${valor_07}
    Should contain      ${loja_08}      ${valor_08}
    Should contain      ${loja_09}      ${valor_09}
    Should contain      ${loja_10}      ${valor_10}
    Should contain      ${loja_11}      ${valor_11}
    Should contain      ${loja_12}      ${valor_12}
    Should contain      ${loja_13}      ${valor_13}
    Should contain      ${loja_14}      ${valor_14}
    Should contain      ${loja_15}      ${valor_15}
    Should contain      ${loja_16}      ${valor_16}
    Should contain      ${loja_17}      ${valor_17}
    Should contain      ${loja_18}      ${valor_18}
    Should contain      ${loja_19}      ${valor_19}
    Should contain      ${loja_20}      ${valor_20}
    Should contain      ${loja_21}      ${valor_21}
    Should contain      ${loja_22}      ${valor_22}
    Should contain      ${loja_23}      ${valor_23}
    Should contain      ${loja_24}      ${valor_24}
    Should contain      ${loja_25}      ${valor_25}
    Should contain      ${loja_26}      ${valor_26}
    Should contain      ${loja_27}      ${valor_27}
    Should contain      ${loja_28}      ${valor_28}
    Should contain      ${loja_29}      ${valor_29}

ENTÃO devo verificar as lojas prioritárias de BA - PECAS VW
    &{body}             Pecas Vw Geolocalizacao 4
    ${response}         POST        ${HOST_PECAS_VW}          json=${body}
    ${item}         Set Variable        ${response.json()}
    ${loja_00}      Get Value From Json         ${item}         $.data.lojas_prioritarias[0]
    ${loja_01}      Get Value From Json         ${item}         $.data.lojas_prioritarias[1]
    ${loja_02}      Get Value From Json         ${item}         $.data.lojas_prioritarias[2]
    ${loja_03}      Get Value From Json         ${item}         $.data.lojas_prioritarias[3]
    ${loja_04}      Get Value From Json         ${item}         $.data.lojas_prioritarias[4]
    ${loja_05}      Get Value From Json         ${item}         $.data.lojas_prioritarias[5]
    ${loja_06}      Get Value From Json         ${item}         $.data.lojas_prioritarias[6]
    ${loja_07}      Get Value From Json         ${item}         $.data.lojas_prioritarias[7]
    ${loja_08}      Get Value From Json         ${item}         $.data.lojas_prioritarias[8]
    ${loja_09}      Get Value From Json         ${item}         $.data.lojas_prioritarias[9]
    ${loja_10}      Get Value From Json         ${item}         $.data.lojas_prioritarias[10]
    ${loja_11}      Get Value From Json         ${item}         $.data.lojas_prioritarias[11]
    ${loja_12}      Get Value From Json         ${item}         $.data.lojas_prioritarias[12]
    ${loja_13}      Get Value From Json         ${item}         $.data.lojas_prioritarias[13]
    ${loja_14}      Get Value From Json         ${item}         $.data.lojas_prioritarias[14]
    ${loja_15}      Get Value From Json         ${item}         $.data.lojas_prioritarias[15]
    ${loja_16}      Get Value From Json         ${item}         $.data.lojas_prioritarias[16]
    ${loja_17}      Get Value From Json         ${item}         $.data.lojas_prioritarias[17]
    ${loja_18}      Get Value From Json         ${item}         $.data.lojas_prioritarias[18]
    ${loja_19}      Get Value From Json         ${item}         $.data.lojas_prioritarias[19]
    ${loja_20}      Get Value From Json         ${item}         $.data.lojas_prioritarias[20]
    ${loja_21}      Get Value From Json         ${item}         $.data.lojas_prioritarias[21]
    ${loja_22}      Get Value From Json         ${item}         $.data.lojas_prioritarias[22]
    ${loja_23}      Get Value From Json         ${item}         $.data.lojas_prioritarias[23]
    ${loja_24}      Get Value From Json         ${item}         $.data.lojas_prioritarias[24]
    ${loja_25}      Get Value From Json         ${item}         $.data.lojas_prioritarias[25]
    ${loja_26}      Get Value From Json         ${item}         $.data.lojas_prioritarias[26]
    ${loja_27}      Get Value From Json         ${item}         $.data.lojas_prioritarias[27]
    ${loja_28}      Get Value From Json         ${item}         $.data.lojas_prioritarias[28]
    ${loja_29}      Get Value From Json         ${item}         $.data.lojas_prioritarias[29]
    ${valor_00}         Convert To Number       245
    ${valor_01}         Convert To Number       246
    ${valor_02}         Convert To Number       243
    ${valor_03}         Convert To Number       253
    ${valor_04}         Convert To Number       244
    ${valor_05}         Convert To Number       252
    ${valor_06}         Convert To Number       236
    ${valor_07}         Convert To Number       235
    ${valor_08}         Convert To Number       237
    ${valor_09}         Convert To Number       248
    ${valor_10}         Convert To Number       228
    ${valor_11}         Convert To Number       234
    ${valor_12}         Convert To Number       238
    ${valor_13}         Convert To Number       229
    ${valor_14}         Convert To Number       231
    ${valor_15}         Convert To Number       250
    ${valor_16}         Convert To Number       249
    ${valor_17}         Convert To Number       223
    ${valor_18}         Convert To Number       224
    ${valor_19}         Convert To Number       230
    ${valor_20}         Convert To Number       226
    ${valor_21}         Convert To Number       241
    ${valor_22}         Convert To Number       240
    ${valor_23}         Convert To Number       218
    ${valor_24}         Convert To Number       215
    ${valor_25}         Convert To Number       221
    ${valor_26}         Convert To Number       216
    ${valor_27}         Convert To Number       219
    ${valor_28}         Convert To Number       217
    ${valor_29}         Convert To Number       220

    Should contain      ${loja_00}      ${valor_00}
    Should contain      ${loja_01}      ${valor_01}
    Should contain      ${loja_02}      ${valor_02}
    Should contain      ${loja_03}      ${valor_03}
    Should contain      ${loja_04}      ${valor_04}
    Should contain      ${loja_05}      ${valor_05}
    Should contain      ${loja_06}      ${valor_06}
    Should contain      ${loja_07}      ${valor_07}
    Should contain      ${loja_08}      ${valor_08}
    Should contain      ${loja_09}      ${valor_09}
    Should contain      ${loja_10}      ${valor_10}
    Should contain      ${loja_11}      ${valor_11}
    Should contain      ${loja_12}      ${valor_12}
    Should contain      ${loja_13}      ${valor_13}
    Should contain      ${loja_14}      ${valor_14}
    Should contain      ${loja_15}      ${valor_15}
    Should contain      ${loja_16}      ${valor_16}
    Should contain      ${loja_17}      ${valor_17}
    Should contain      ${loja_18}      ${valor_18}
    Should contain      ${loja_19}      ${valor_19}
    Should contain      ${loja_20}      ${valor_20}
    Should contain      ${loja_21}      ${valor_21}
    Should contain      ${loja_22}      ${valor_22}
    Should contain      ${loja_23}      ${valor_23}
    Should contain      ${loja_24}      ${valor_24}
    Should contain      ${loja_25}      ${valor_25}
    Should contain      ${loja_26}      ${valor_26}
    Should contain      ${loja_27}      ${valor_27}
    Should contain      ${loja_28}      ${valor_28}
    Should contain      ${loja_29}      ${valor_29}

ENTÃO devo verificar as lojas prioritárias de PR - PECAS VW
    &{body}             Pecas Vw Geolocalizacao 5
    ${response}         POST        ${HOST_PECAS_VW}          json=${body}
    ${item}         Set Variable        ${response.json()}
    ${loja_00}      Get Value From Json         ${item}         $.data.lojas_prioritarias[0]
    ${loja_01}      Get Value From Json         ${item}         $.data.lojas_prioritarias[1]
    ${loja_02}      Get Value From Json         ${item}         $.data.lojas_prioritarias[2]
    ${loja_03}      Get Value From Json         ${item}         $.data.lojas_prioritarias[3]
    ${loja_04}      Get Value From Json         ${item}         $.data.lojas_prioritarias[4]
    ${loja_05}      Get Value From Json         ${item}         $.data.lojas_prioritarias[5]
    ${loja_06}      Get Value From Json         ${item}         $.data.lojas_prioritarias[6]
    ${loja_07}      Get Value From Json         ${item}         $.data.lojas_prioritarias[7]
    ${loja_08}      Get Value From Json         ${item}         $.data.lojas_prioritarias[8]
    ${loja_09}      Get Value From Json         ${item}         $.data.lojas_prioritarias[9]
    ${loja_10}      Get Value From Json         ${item}         $.data.lojas_prioritarias[10]
    ${loja_11}      Get Value From Json         ${item}         $.data.lojas_prioritarias[11]
    ${loja_12}      Get Value From Json         ${item}         $.data.lojas_prioritarias[12]
    ${loja_13}      Get Value From Json         ${item}         $.data.lojas_prioritarias[13]
    ${loja_14}      Get Value From Json         ${item}         $.data.lojas_prioritarias[14]
    ${loja_15}      Get Value From Json         ${item}         $.data.lojas_prioritarias[15]
    ${loja_16}      Get Value From Json         ${item}         $.data.lojas_prioritarias[16]
    ${loja_17}      Get Value From Json         ${item}         $.data.lojas_prioritarias[17]
    ${loja_18}      Get Value From Json         ${item}         $.data.lojas_prioritarias[18]
    ${loja_19}      Get Value From Json         ${item}         $.data.lojas_prioritarias[19]
    ${loja_20}      Get Value From Json         ${item}         $.data.lojas_prioritarias[20]
    ${loja_21}      Get Value From Json         ${item}         $.data.lojas_prioritarias[21]
    ${loja_22}      Get Value From Json         ${item}         $.data.lojas_prioritarias[22]
    ${loja_23}      Get Value From Json         ${item}         $.data.lojas_prioritarias[23]
    ${loja_24}      Get Value From Json         ${item}         $.data.lojas_prioritarias[24]
    ${loja_25}      Get Value From Json         ${item}         $.data.lojas_prioritarias[25]
    ${loja_26}      Get Value From Json         ${item}         $.data.lojas_prioritarias[26]
    ${loja_27}      Get Value From Json         ${item}         $.data.lojas_prioritarias[27]
    ${loja_28}      Get Value From Json         ${item}         $.data.lojas_prioritarias[28]
    ${loja_29}      Get Value From Json         ${item}         $.data.lojas_prioritarias[29]
    ${valor_00}         Convert To Number       215
    ${valor_01}         Convert To Number       221
    ${valor_02}         Convert To Number       216
    ${valor_03}         Convert To Number       218
    ${valor_04}         Convert To Number       219
    ${valor_05}         Convert To Number       240
    ${valor_06}         Convert To Number       241
    ${valor_07}         Convert To Number       226
    ${valor_08}         Convert To Number       217
    ${valor_09}         Convert To Number       230
    ${valor_10}         Convert To Number       220
    ${valor_11}         Convert To Number       223
    ${valor_12}         Convert To Number       224
    ${valor_13}         Convert To Number       231
    ${valor_14}         Convert To Number       229
    ${valor_15}         Convert To Number       238
    ${valor_16}         Convert To Number       228
    ${valor_17}         Convert To Number       234
    ${valor_18}         Convert To Number       237
    ${valor_19}         Convert To Number       235
    ${valor_20}         Convert To Number       252
    ${valor_21}         Convert To Number       236
    ${valor_22}         Convert To Number       244
    ${valor_23}         Convert To Number       249
    ${valor_24}         Convert To Number       248
    ${valor_25}         Convert To Number       250
    ${valor_26}         Convert To Number       253
    ${valor_27}         Convert To Number       246
    ${valor_28}         Convert To Number       243
    ${valor_29}         Convert To Number       245

    Should contain      ${loja_00}      ${valor_00}
    Should contain      ${loja_01}      ${valor_01}
    Should contain      ${loja_02}      ${valor_02}
    Should contain      ${loja_03}      ${valor_03}
    Should contain      ${loja_04}      ${valor_04}
    Should contain      ${loja_05}      ${valor_05}
    Should contain      ${loja_06}      ${valor_06}
    Should contain      ${loja_07}      ${valor_07}
    Should contain      ${loja_08}      ${valor_08}
    Should contain      ${loja_09}      ${valor_09}
    Should contain      ${loja_10}      ${valor_10}
    Should contain      ${loja_11}      ${valor_11}
    Should contain      ${loja_12}      ${valor_12}
    Should contain      ${loja_13}      ${valor_13}
    Should contain      ${loja_14}      ${valor_14}
    Should contain      ${loja_15}      ${valor_15}
    Should contain      ${loja_16}      ${valor_16}
    Should contain      ${loja_17}      ${valor_17}
    Should contain      ${loja_18}      ${valor_18}
    Should contain      ${loja_19}      ${valor_19}
    Should contain      ${loja_20}      ${valor_20}
    Should contain      ${loja_21}      ${valor_21}
    Should contain      ${loja_22}      ${valor_22}
    Should contain      ${loja_23}      ${valor_23}
    Should contain      ${loja_24}      ${valor_24}
    Should contain      ${loja_25}      ${valor_25}
    Should contain      ${loja_26}      ${valor_26}
    Should contain      ${loja_27}      ${valor_27}
    Should contain      ${loja_28}      ${valor_28}
    Should contain      ${loja_29}      ${valor_29}

ENTÃO devo verificar as lojas prioritárias de SC - PECAS VW
    &{body}             Pecas Vw Geolocalizacao 6
    ${response}         POST        ${HOST_PECAS_VW}          json=${body}
    ${item}         Set Variable        ${response.json()}
    ${loja_00}      Get Value From Json         ${item}         $.data.lojas_prioritarias[0]
    ${loja_01}      Get Value From Json         ${item}         $.data.lojas_prioritarias[1]
    ${loja_02}      Get Value From Json         ${item}         $.data.lojas_prioritarias[2]
    ${loja_03}      Get Value From Json         ${item}         $.data.lojas_prioritarias[3]
    ${loja_04}      Get Value From Json         ${item}         $.data.lojas_prioritarias[4]
    ${loja_05}      Get Value From Json         ${item}         $.data.lojas_prioritarias[5]
    ${loja_06}      Get Value From Json         ${item}         $.data.lojas_prioritarias[6]
    ${loja_07}      Get Value From Json         ${item}         $.data.lojas_prioritarias[7]
    ${loja_08}      Get Value From Json         ${item}         $.data.lojas_prioritarias[8]
    ${loja_09}      Get Value From Json         ${item}         $.data.lojas_prioritarias[9]
    ${loja_10}      Get Value From Json         ${item}         $.data.lojas_prioritarias[10]
    ${loja_11}      Get Value From Json         ${item}         $.data.lojas_prioritarias[11]
    ${loja_12}      Get Value From Json         ${item}         $.data.lojas_prioritarias[12]
    ${loja_13}      Get Value From Json         ${item}         $.data.lojas_prioritarias[13]
    ${loja_14}      Get Value From Json         ${item}         $.data.lojas_prioritarias[14]
    ${loja_15}      Get Value From Json         ${item}         $.data.lojas_prioritarias[15]
    ${loja_16}      Get Value From Json         ${item}         $.data.lojas_prioritarias[16]
    ${loja_17}      Get Value From Json         ${item}         $.data.lojas_prioritarias[17]
    ${loja_18}      Get Value From Json         ${item}         $.data.lojas_prioritarias[18]
    ${loja_19}      Get Value From Json         ${item}         $.data.lojas_prioritarias[19]
    ${loja_20}      Get Value From Json         ${item}         $.data.lojas_prioritarias[20]
    ${loja_21}      Get Value From Json         ${item}         $.data.lojas_prioritarias[21]
    ${loja_22}      Get Value From Json         ${item}         $.data.lojas_prioritarias[22]
    ${loja_23}      Get Value From Json         ${item}         $.data.lojas_prioritarias[23]
    ${loja_24}      Get Value From Json         ${item}         $.data.lojas_prioritarias[24]
    ${loja_25}      Get Value From Json         ${item}         $.data.lojas_prioritarias[25]
    ${loja_26}      Get Value From Json         ${item}         $.data.lojas_prioritarias[26]
    ${loja_27}      Get Value From Json         ${item}         $.data.lojas_prioritarias[27]
    ${loja_28}      Get Value From Json         ${item}         $.data.lojas_prioritarias[28]
    ${loja_29}      Get Value From Json         ${item}         $.data.lojas_prioritarias[29]
    ${valor_00}         Convert To Number       216
    ${valor_01}         Convert To Number       221
    ${valor_02}         Convert To Number       215
    ${valor_03}         Convert To Number       219
    ${valor_04}         Convert To Number       218
    ${valor_05}         Convert To Number       217
    ${valor_06}         Convert To Number       240
    ${valor_07}         Convert To Number       220
    ${valor_08}         Convert To Number       241
    ${valor_09}         Convert To Number       226
    ${valor_10}         Convert To Number       230
    ${valor_11}         Convert To Number       223
    ${valor_12}         Convert To Number       224
    ${valor_13}         Convert To Number       231
    ${valor_14}         Convert To Number       229
    ${valor_15}         Convert To Number       238
    ${valor_16}         Convert To Number       228
    ${valor_17}         Convert To Number       234
    ${valor_18}         Convert To Number       237
    ${valor_19}         Convert To Number       235
    ${valor_20}         Convert To Number       236
    ${valor_21}         Convert To Number       252
    ${valor_22}         Convert To Number       244
    ${valor_23}         Convert To Number       249
    ${valor_24}         Convert To Number       248
    ${valor_25}         Convert To Number       250
    ${valor_26}         Convert To Number       253
    ${valor_27}         Convert To Number       246
    ${valor_28}         Convert To Number       243
    ${valor_29}         Convert To Number       245

    Should contain      ${loja_00}      ${valor_00}
    Should contain      ${loja_01}      ${valor_01}
    Should contain      ${loja_02}      ${valor_02}
    Should contain      ${loja_03}      ${valor_03}
    Should contain      ${loja_04}      ${valor_04}
    Should contain      ${loja_05}      ${valor_05}
    Should contain      ${loja_06}      ${valor_06}
    Should contain      ${loja_07}      ${valor_07}
    Should contain      ${loja_08}      ${valor_08}
    Should contain      ${loja_09}      ${valor_09}
    Should contain      ${loja_10}      ${valor_10}
    Should contain      ${loja_11}      ${valor_11}
    Should contain      ${loja_12}      ${valor_12}
    Should contain      ${loja_13}      ${valor_13}
    Should contain      ${loja_14}      ${valor_14}
    Should contain      ${loja_15}      ${valor_15}
    Should contain      ${loja_16}      ${valor_16}
    Should contain      ${loja_17}      ${valor_17}
    Should contain      ${loja_18}      ${valor_18}
    Should contain      ${loja_19}      ${valor_19}
    Should contain      ${loja_20}      ${valor_20}
    Should contain      ${loja_21}      ${valor_21}
    Should contain      ${loja_22}      ${valor_22}
    Should contain      ${loja_23}      ${valor_23}
    Should contain      ${loja_24}      ${valor_24}
    Should contain      ${loja_25}      ${valor_25}
    Should contain      ${loja_26}      ${valor_26}
    Should contain      ${loja_27}      ${valor_27}
    Should contain      ${loja_28}      ${valor_28}
    Should contain      ${loja_29}      ${valor_29}
