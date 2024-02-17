const iniVec = new Uint8Array([10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160]);

async function aesDecrypt(encryptedBytes)
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
      ["decrypt"]
    );
  
    // decrypt
    const decryptedData = await crypto.subtle.decrypt(
      { name: "AES-CBC", iv: iniVec },
      key,
      encryptedBytes
    );
  
    // decode
    const decryptedText = new TextDecoder().decode(decryptedData);
    return decryptedText;
}

const encryptedBase64 = "pd3KFvx8XXWaQZEw3AOM+w==";
const encryptedBytes = Uint8Array.from(atob(encryptedBase64), c => c.charCodeAt(0));

aesDecrypt(encryptedBytes).then((decryptedText) => {
  console.log(decryptedText);
});

