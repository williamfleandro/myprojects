SELECT DISTINCT
	   D1.TIPO as A2_TIPO,
	   D1.CGC as A2_CGC,
	   substring(D1.CGC,1,8) as A2_COD,
	   substring(D1.CGC,11,4) as A2_LOJA,
	   D1.RSOCIAL as A2_NONE,
	  (CONCAT(RTRIM(D1.ENDERECO),', ',RTRIM(D1.NRO), ' ', D1.COMPEND)) AS A2_END, 
	   D1.ESTADO as A2_EST,
	   D1.BAIRRO as A2_BAIRRO,
	   D2.IBGE as A2_COD_MUN,
	   D2.NOMECID as A2_MUN,
	   D1.CEP as A2_CEP,
	   D1.FONE1 as A2_TEL,
	   D1.INSCEST as A2_INSCR,
	   D1.ISS as A2_ISS,
	   D1.PIS as A2_PIS,
	   D1.COFINS as A2_COFINS,
	   D1.CSLL as A2_CSLL,
	   D1.VALIMPOS1 as A2_IRRF,
	   D1.VALIMPOS2 as A2_INSS,
	   RTRIM(D1.TELEX) as A2_EMAIL

 FROM CPFORNEC_GERAL D1
 LEFT JOIN SARCIDADES_GERAL D2 ON D2.CODCID = D1.CODCID AND D1.ESTADO = D2.ESTADO
  WHERE D1.TIPO <> '' AND D1.CGC <> ''

 SELECT * FROM SARCIDADES_GERAL
 SELECT * FROM FORNECEDOR_SCI WHERE CPF_CNPJ = '01781984000158'   
 SELECT * FROM CPFORNEC_GERAL WHERE CGC = '01781984000158'   
 --UPDATE DADOS_FORNECEDORES SET TELEX = '' WHERE VALIMPOS2 = '0'

/*
ALTER TABLE CPFORNEC_GERAL 
ADD TIPO VARCHAR (1)
*/
/*
UPDATE CPFORNEC_GERAL SET TIPO = 'J' WHERE SUBSTRING (CGC,9,4) <> '0000'
*/
/*

BEGIN TRANSACTION 
UPDATE CPFORNEC_GERAL SET TELEX = REPLACE(TELEX, 'combr', 'com.br')

Rollback
commit
*/