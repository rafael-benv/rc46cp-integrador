## Tarefa 1: Tabela de Sub-Redes

*Preencha o valor de **N** e **NN** com os dois últimos dígitos do seu RA.*

RA: 2666464

| Sub- Rede             | IPv4 - Sub-Rede         | IPv4 - Máscara            | IPv6 - Sub-Rede/Prefixo              |
| :-------------------: | :---------------------: | :-----------------------: | :----------------------------------: |
| **Pato Branco**       | 200.136.64.0            | 255.255.255.192           | 2001:DB8:CAFE:6400::/64              |
| **Francisco Beltrão** | 200.136.64.64           | 255.255.255.224           | 2001:DB8:CAFE:6401::/64              |
| **Dois Vizinhos**     | 200.136.64.96           | 255.255.255.224           | 2001:DB8:CAFE:6402::/64              |
| **Toledo**            | 200.136.64.128          | 255.255.255.224           | 2001:DB8:CAFE:6403::/64              |
| **Medianeira**        | 200.136.64.160          | 255.255.255.224           | 2001:DB8:CAFE:6404::/64              |
| **Santa Helena**      | 200.136.64.192          | 255.255.255.224           | 2001:DB8:CAFE:6405::/64              |
| **pb-vit**            | 200.136.64.224          | 255.255.255.252           | 2001:DB8:CAFE:64FF::0:0/112          |
| **vit-fb**            | 200.136.64.228          | 255.255.255.252           | 2001:DB8:CAFE:64FF::1:0/112          |
| **fb-ita**            | 200.136.64.232          | 255.255.255.252           | 2001:DB8:CAFE:64FF::2:0/112          |
| **ita-pb**            | 200.136.64.236          | 255.255.255.252           | 2001:DB8:CAFE:64FF::3:0/112          |
| **ita-dv**            | 200.136.64.240          | 255.255.255.252           | 2001:DB8:CAFE:64FF::4:0/112          |

---

## Tarefa 2: Tabela de Endereçamento Lógico

| Dispositivo                   | Interface | IPv4           | IPv4 - Máscara  | IPv4 - Gateway | IPv6/Prefixo (GUA)          | IPv6 (LLA) | IPv6-Gateway      |
| :---------------------------: | :-------: | :------------: | :-------------: | :------------: | :-------------------------: | :--------: | :---------------: |
| **SRV-PB-DNS-DHCP**           | NIC       | 200.136.64.3   | 255.255.255.192 | 200.136.64.1   | 2001:DB8:CAFE:6400::3/64    | EUI-64     | *FE80::1*         |
| **SRV-PB-WEB**                | NIC       | 200.136.64.4   | 255.255.255.192 | 200.136.64.1   | 2001:DB8:CAFE:6400::4/64    | EUI-64     | *FE80::1*         |
| **SRV-FB-DNS-DHCP**           | NIC       | 200.136.64.67  | 255.255.255.224 | 200.136.64.65  | 2001:DB8:CAFE:6401::3/64    | EUI-64     | *FE80::1*         |
| **SRV-FB-WEB**                | NIC       | 200.136.64.68  | 255.255.255.224 | 200.136.64.65  | 2001:DB8:CAFE:6401::4/64    | EUI-64     | *FE80::1*         |
| **SRV-DV-DNS-DHCP**           | NIC       | 200.136.64.99  | 255.255.255.224 | 200.136.64.97  | 2001:DB8:CAFE:6402::3/64    | EUI-64     | *FE80::1*         |
| **SRV-DV-WEB**                | NIC       | 200.136.64.100 | 255.255.255.224 | 200.136.64.97  | 2001:DB8:CAFE:6402::4/64    | EUI-64     | *FE80::1*         |
| **AP-Pato Branco — futuro**   | LAN (Gi1) | 200.136.64.5   | 255.255.255.192 | 200.136.64.1   | 2001:DB8:CAFE:6400::5/64    | Automático | FE80::1           |
| **AP-Fco. Beltrão — futuro**  | LAN (Gi1) | 200.136.64.69  | 255.255.255.224 | 200.136.64.65  | 2001:DB8:CAFE:6401::5/64    | Automático | FE80::1           |
| **AP-Dois Vizinhos — futuro** | LAN (Gi1) | 200.136.64.101 | 255.255.255.224 | 200.136.64.97  | 2001:DB8:CAFE:6402::5/64    | Automático | FE80::1           |
| **Switch-Pato Branco**        | SVI       | 200.136.64.2   | 255.255.255.192 | 200.136.64.1   | 2001:DB8:CAFE:6400::2/64    | EUI-64     | Automático via RA |
| **Switch-Fco. Beltrão**       | SVI       | 200.136.64.66  | 255.255.255.224 | 200.136.64.65  | 2001:DB8:CAFE:6401::2/64    | EUI-64     | Automático via RA |
| **Switch-Dois Vizinhos**      | SVI       | 200.136.64.98  | 255.255.255.224 | 200.136.64.97  | 2001:DB8:CAFE:6402::2/64    | EUI-64     | Automático via RA |
| **Roteador-Pato Branco**      | Fa0/0     | 200.136.64.1   | 255.255.255.192 | **-**          | 2001:DB8:CAFE:6400::1/64    | *FE80::1*  | **-**             |
| **Roteador-Pato Branco**      | Se0/0/0   | 200.136.64.225 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::0:1/112 | EUI-64     | **-**             |
| **Roteador-Pato Branco**      | Se0/0/1   | 200.136.64.238 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::3:2/112 | EUI-64     | **-**             |
| **Roteador-Fco. Beltrão**     | Fa0/0     | 200.136.64.65  | 255.255.255.224 | **-**          | 2001:DB8:CAFE:6401::1/64    | *FE80::1*  | **-**             |
| **Roteador-Fco. Beltrão**     | Se0/0/0   | 200.136.64.233 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::2:1/112 | EUI-64     | **-**             |
| **Roteador-Fco. Beltrão**     | Se0/0/1   | 200.136.64.230 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::1:2/112 | EUI-64     | **-**             |
| **Roteador-Vitorino**         | Se0/0/0   | 200.136.64.229 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::1:1/112 | EUI-64     | **-**             |
| **Roteador-Vitorino**         | Se0/0/1   | 200.136.64.226 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::2/112   | EUI-64     | **-**             |
| **Roteador-Itapejara**        | Se0/0/0   | 200.136.64.237 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::3:1/112 | EUI-64     | **-**             |
| **Roteador-Itapejara**        | Se0/0/1   | 200.136.64.234 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::2:2/112 | EUI-64     | **-**             |
| **Roteador-Itapejara**        | Fa0/1     | 200.136.64.241 | 255.255.255.252 | **-**          | 2001:DB8:CAFE:64FF::4:1/112 | EUI-64     | **-**             |
| **Roteador-Dois Vizinhos**    | Fa0/0     | 200.136.64.97  | 255.255.255.224 | **-**          | 2001:DB8:CAFE:6402::1/64    | *FE80::1*  | **-**             |
| **Roteador-Dois Vizinhos**    | Fa0/1     | 200.136.64.242 | 255.255.255.224 | **-**          | 2001:DB8:CAFE:64FF::4:2/112 | EUI-64     | **-**             |

---

## Seção 7.1: Tabelas de Roteamento — Entrega 3

| **pb-vit**            | 200.136.64.224          | 255.255.255.252           | 2001:DB8:CAFE:64FF::0:0/112          |
| **vit-fb**            | 200.136.64.228          | 255.255.255.252           | 2001:DB8:CAFE:64FF::1:0/112          |
| **fb-ita**            | 200.136.64.232          | 255.255.255.252           | 2001:DB8:CAFE:64FF::2:0/112          |
| **ita-pb**            | 200.136.64.236          | 255.255.255.252           | 2001:DB8:CAFE:64FF::3:0/112          |
| **ita-dv**            | 200.136.64.240          | 255.255.255.252           | 2001:DB8:CAFE:64FF::4:0/112          |


### Roteador Pato Branco

#### IPv4

| Rede de Destino | Máscara          | Próximo Salto   | Interface de Saída |
| :-------------: | :--------------: | :-------------: | :----------------: |
| 200.136.64.0    | 255.255.255.192  | 0.0.0.0         | Fa0/0              |
| 200.136.64.64   | 255.255.255.224  | 200.136.64.226  | Se0/0/0            |
| 200.136.64.96   | 255.255.255.224  | 200.136.64.226  | Se0/0/0            |

| 200.136.64.224  | 255.255.255.252  | 0.0.0.0         | Se0/0/0            |
| 200.136.64.228  | 255.255.255.252  | 200.136.64.226  | Se0/0/0            |
| 200.136.64.232  | 255.255.255.252  | 200.136.64.226  | Se0/0/0            |
| 200.136.64.236  | 255.255.255.252  | 200.136.64.226  | Se0/0/0            |
| 200.136.64.240  | 255.255.255.252  | 200.136.64.226  | Se0/0/0            |

#### IPv6

| Rede de Destino /Prefixo    | Próximo Salto               | Interface de Saída |
| :-------------------------: | :-------------------------: | :----------------: |
| 2001:DB8:CAFE:6400::/64     | FE80::1                     | Fa0/0              |
| 2001:DB8:CAFE:6401::/64     | 2001:DB8:CAFE:64FF::2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6402::/64     | 2001:DB8:CAFE:64FF::2/112   | Se0/0/0            |

| 2001:DB8:CAFE:6400::0:0/112  | FE80::1                     | Se0/0/0            |
| 2001:DB8:CAFE:6400::1:0/112  | 2001:DB8:CAFE:64FF::2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::2:0/112  | 2001:DB8:CAFE:64FF::2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::3:0/112  | 2001:DB8:CAFE:64FF::2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::4:0/112  | 2001:DB8:CAFE:64FF::2/112   | Se0/0/0            |

### Roteador Francisco Beltrão

#### IPv4

| Rede de Destino | Máscara          | Próximo Salto   | Interface de Saída |
| :-------------: | :--------------: | :-------------: | :----------------: |
| 200.136.64.0    | 255.255.255.192  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.64   | 255.255.255.224  | 0.0.0.0         | Fa0/0              |
| 200.136.64.96   | 255.255.255.224  | 200.136.64.234  | Se0/0/0            |

| 200.136.64.224  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.228  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.232  | 255.255.255.252  | 0.0.0.0         | Se0/0/0            |
| 200.136.64.236  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.240  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |

#### IPv6

| Rede de Destino /Prefixo    | Próximo Salto                 | Interface de Saída |
| :-------------------------: | :---------------------------: | :----------------: |
| 2001:DB8:CAFE:6400::/64     | 2001:DB8:CAFE:64FF::2:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6401::/64     | FE80::1                       | Fa0/0              |
| 2001:DB8:CAFE:6402::/64     | 2001:DB8:CAFE:64FF::2:2/112   | Se0/0/0            |

| 2001:DB8:CAFE:6400::0:0/112 | 2001:DB8:CAFE:64FF::2:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::1:0/112 | 2001:DB8:CAFE:64FF::2:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::2:0/112 | FE80::1                       | Se0/0/0            |
| 2001:DB8:CAFE:6400::3:0/112 | 2001:DB8:CAFE:64FF::2:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::4:0/112 | 2001:DB8:CAFE:64FF::2:2/112   | Se0/0/0            |

### Roteador Vitorino

#### IPv4

| Rede de Destino | Máscara          | Próximo Salto   | Interface de Saída |
| :-------------: | :--------------: | :-------------: | :----------------: |
| 200.136.64.0    | 255.255.255.192  | 200.136.64.230  | Se0/0/0            |
| 200.136.64.64   | 255.255.255.224  | 200.136.64.230  | Se0/0/0            |
| 200.136.64.96   | 255.255.255.224  | 200.136.64.230  | Se0/0/0            |

| 200.136.64.224  | 255.255.255.252  | 200.136.64.230  | Se0/0/0            |
| 200.136.64.228  | 255.255.255.252  | 0.0.0.0         | Se0/0/0            |
| 200.136.64.232  | 255.255.255.252  | 200.136.64.230  | Se0/0/0            |
| 200.136.64.236  | 255.255.255.252  | 200.136.64.230  | Se0/0/0            |
| 200.136.64.240  | 255.255.255.252  | 200.136.64.230  | Se0/0/0            |

#### IPv6

| Rede de Destino /Prefixo    | Próximo Salto                 | Interface de Saída |
| :-------------------------: | :---------------------------: | :----------------: |
| 2001:DB8:CAFE:6400::/64     | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6401::/64     | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6402::/64     | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |

| 2001:DB8:CAFE:6400::0:0/112 | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::1:0/112 | FE80::1                       | Se0/0/0            |
| 2001:DB8:CAFE:6400::2:0/112 | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::3:0/112 | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::4:0/112 | 2001:DB8:CAFE:64FF::1:2/112   | Se0/0/0            |

### Roteador Itapejara D'Oeste

#### IPv4

| Rede de Destino | Máscara          | Próximo Salto   | Interface de Saída |
| :-------------: | :--------------: | :-------------: | :----------------: |
| 200.136.64.0    | 255.255.255.192  | 200.136.64.238  | Se0/0/0            |
| 200.136.64.64   | 255.255.255.224  | 200.136.64.238  | Se0/0/0            |
| 200.136.64.96   | 255.255.255.224  | 200.136.64.242  | Fa0/0              |

| 200.136.64.224  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.228  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.232  | 255.255.255.252  | 200.136.64.234  | Se0/0/0            |
| 200.136.64.236  | 255.255.255.252  | 0.0.0.0         | Se0/0/0            |
| 200.136.64.240  | 255.255.255.252  | 0.0.0.0         | Fa0/0              |

#### IPv6

| Rede de Destino /Prefixo    | Próximo Salto                 | Interface de Saída |
| :-------------------------: | :---------------------------: | :----------------: |
| 2001:DB8:CAFE:6400::/64     | 2001:DB8:CAFE:64FF::3:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6401::/64     | 2001:DB8:CAFE:64FF::3:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6402::/64     | 2001:DB8:CAFE:64FF::4:2/112   | Fa0/0              |

| 2001:DB8:CAFE:6400::0:0/112  | 2001:DB8:CAFE:64FF::3:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::1:0/112  | 2001:DB8:CAFE:64FF::3:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::2:0/112  | 2001:DB8:CAFE:64FF::3:2/112   | Se0/0/0            |
| 2001:DB8:CAFE:6400::3:0/112  | FE80::1                       | Se0/0/0            |
| 2001:DB8:CAFE:6400::4:0/112  | FE80::1                       | Fa0/0              |

### Roteador Dois Vizinhos

#### IPv4

| Rede de Destino | Máscara          | Próximo Salto   | Interface de Saída |
| :-------------: | :--------------: | :-------------: | :----------------: |
| 200.136.64.0    | 255.255.255.192  | 200.136.64.241  | Fa0/1              |
| 200.136.64.64   | 255.255.255.224  | 200.136.64.241  | Fa0/1              |
| 200.136.64.96   | 255.255.255.224  | 0.0.0.0         | Fa0/0              |

| 200.136.64.224  | 255.255.255.252  | 200.136.64.234  | Fa0/1              |
| 200.136.64.228  | 255.255.255.252  | 200.136.64.234  | Fa0/1              |
| 200.136.64.232  | 255.255.255.252  | 200.136.64.234  | Fa0/1              |
| 200.136.64.236  | 255.255.255.252  | 200.136.64.234  | Fa0/1              |
| 200.136.64.240  | 255.255.255.252  | 0.0.0.0         | Fa0/1              |

#### IPv6

| Rede de Destino /Prefixo     | Próximo Salto                 | Interface de Saída |
| :--------------------------: | :---------------------------: | :----------------: |
| 2001:DB8:CAFE:6400::/64      | 2001:DB8:CAFE:64FF::4:1/112   | Fa0/1              |
| 2001:DB8:CAFE:6401::/64      | 2001:DB8:CAFE:64FF::4:1/112   | Fa0/1              |
| 2001:DB8:CAFE:6402::/64      | FE80::1                       | Fa0/0              |

| 2001:DB8:CAFE:6400::0:0/112  | 2001:DB8:CAFE:64FF::4:1/112   | Fa0/1              |
| 2001:DB8:CAFE:6400::1:0/112  | 2001:DB8:CAFE:64FF::4:1/112   | Fa0/1              |
| 2001:DB8:CAFE:6400::2:0/112  | 2001:DB8:CAFE:64FF::4:1/112   | Fa0/1              |
| 2001:DB8:CAFE:6400::3:0/112  | 2001:DB8:CAFE:64FF::4:1/112   | Fa0/1              |
| 2001:DB8:CAFE:6400::4:0/112  | FE80::1                       | Fa0/1              |

---

## 📶 Tarefa 9: Documentação da Expansão com Wi-Fi — Entrega 4

**Preencher na Entrega 4, após a aula sobre Wi-Fi.** O endereçamento dos APs já deverá constar na Tarefa 2 desde a Entrega 1. Nesta seção, registre os dados da configuração e os resultados da expansão.

### Identificação e Conexões

| Campus                | Nome do AP | Modelo utilizado | Notebook    | Porta do switch ligada ao AP | Porta do AP ligada ao switch |
| :---                  | :---       | :---             | :---        | :---                         | :---                         |
| **Pato Branco**       | ap-pb-rbb  | HomeRouter-PT-AC | Laptop1     | Gig0/1                       | **Gi1**                      |
| **Francisco Beltrão** | ap-fb-rbb  | HomeRouter-PT-AC | Laptop2     | Gig0/1                       | **Gi1**                      |
| **Dois Vizinhos**     | ap-dv-rbb  | HomeRouter-PT-AC | Laptop3     | Gig0/1                       | **Gi1**                      |

### Parâmetros Wi-Fi

| Campus                | SSID configurado | Segurança     | Criptografia | Senha do ambiente simulado | DHCP do AP |
| :---                  | :---             | :---          | :---         | :---                       | :---       |
| **Pato Branco**       | UTFPR-PB-RBB     | WPA2 Personal | AES          | topologia-rbb              | Desligado  |
| **Francisco Beltrão** | UTFPR-FB-RBB     | WPA2 Personal | AES          | topologia-rbb              | Desligado  |
| **Dois Vizinhos**     | UTFPR-DV-RBB     | WPA2 Personal | AES          | topologia-rbb              | Desligado  |

Outros parâmetros Wi-Fi configurados e observações sobre os modelos utilizados: Nenhuma observação.

Confirmação de que os APs utilizam os endereços planejados na Tarefa 2: Verificado.

**Limitações verificadas na implementação — Tarefa 9:** se o modelo de AP não permitir configurar o gerenciamento IPv6 ou outro parâmetro de gerenciamento previsto, registre aqui essa condição. Os endereços IPv4 e IPv6 deverão permanecer definidos na Tarefa 2 como parte do planejamento. A comunicação IPv6 dos notebooks continua sendo requisito da expansão.

Limitações do modelo e parâmetros efetivamente configurados: O modelo não permite configurar ou gerenciar o IPv6 de maneira manual, mas a comunicação IPv6 dos notebooks funciona.

### Endereçamento Recebido pelos Notebooks

| Campus                | IPv4 / máscara | IPv6 GUA / prefixo                    | Gateway IPv4  | Gateway IPv6 | DNS IPv4 / IPv6                       |
| :---                  | :---           | :---                                  | :---          | :---         | :---                                  |
| **Pato Branco**       | 200.136.64.7   | 2001:DB8:CAFE:6400:20A:F3FF:FE6C:86AA | 200.136.64.1  | FE80::1      | 200.136.64.3  / 2001:DB8:CAFE:6400::3 |
| **Francisco Beltrão** | 200.136.64.70  | 2001:DB8:CAFE:6401:201:42FF:FE84:7B0A | 200.136.64.65 | FE80::1      | 200.136.64.67 / 2001:DB8:CAFE:6401::3 |
| **Dois Vizinhos**     | 200.136.64.104 | 2001:DB8:CAFE:6402:201:43FF:FEB8:2EB0 | 200.136.64.97 | FE80::1      | 200.136.64.99 / 2001:DB8:CAFE:6402::3 |

### Resultados dos Testes da Tarefa 9

Resuma os testes locais e remotos realizados com os notebooks, incluindo conectividade IPv4/IPv6, resolução de nomes e acesso às páginas Web. Informe eventuais pendências ou limitações.

**Resumo dos resultados por campus:** Todos funcionando.

**Data da última verificação:** 2026-24-11 11:40

**Pendências ou limitações registradas:** Nenhuma pendência.

---