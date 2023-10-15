const iniVec = new Uint8Array([10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160]);

async function aesEncrypt(bytesToEncrypt)
{
    // encode password to UTF-8
    const password = "SomePassword";
    const encodedPassword = new TextEncoder().encode(password);
    
    // prepare key
    const importedKey = await crypto.subtle.importKey(
      "raw", // key format
      encodedPassword,
      { name: "PBKDF2" }, // key derivation function
      false, // key can not be extracted from API
      ["deriveKey"] // key is intended for key derivation purpose
    );
  
    // derive key for Cipher Block Chaining
    const key = await crypto.subtle.deriveKey(
      {
        name: "PBKDF2",
        salt: iniVec,
        iterations: 1000,
        hash: "SHA-256",
      },
      importedKey,
      { name: "AES-CBC", length: 256 },
      false, // key can not be extracted from the object
      ["encrypt"]
    );
  
    // encrypt
    const encryptedData = await crypto.subtle.encrypt(
      { name: "AES-CBC", iv: iniVec },
      key,
      bytesToEncrypt
    );

    // decode
    const encryptedBytes = new Uint8Array(encryptedData);
    return encryptedBytes;
}

const clearTextContent = "Some String";
const clearTextBytes = new TextEncoder().encode(clearTextContent);

aesEncrypt(clearTextBytes).then((encryptedBytes) => {
  const encryptedBase64 = btoa(String.fromCharCode(...encryptedBytes));
  console.log(encryptedBase64);
});

