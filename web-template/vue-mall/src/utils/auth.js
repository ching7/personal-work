import JSEncrypt from 'jsencrypt/bin/jsencrypt'

const mallPublicKey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm6tC3cKKKkI1hM8bSftjSuEPDiOhDapUSYsua3O40uncQBmkwh5fqEmCe7gpbSKNpZuvbrXx4g7R8kFJnrlBDElQ+bo+EmOE5+I+Bd+7nwS9RR68iPWnU0NXKWin+EPIrFiTFf4yCrevaVb5AS6vO2jzZnToVaz7j2yzl+9wzF8QCoI9mJkoM/8ofz7CHMBouGzMf+y0/sR4JP12y8BYBKEQtstECgPxUr1KbNpp86M5Qzbk4jL7AE45cEsaR2nedVJMOMCPGlx+a4oewYGsB2MDlxggHcz26faZNkVr0wV/P/MHvYDcdzRWdWaas0ZJjymjNtFtl0eHj0enL4fxrQIDAQAB'

export function setPasswordEncrypt (password) {
  const encryptor = new JSEncrypt()
  encryptor.setPublicKey(mallPublicKey) // 设置公钥
  return encryptor.encrypt(password) // 对需要加密的数据进行加密
}

