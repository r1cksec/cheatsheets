from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.padding import PKCS7
from base64 import b64encode
import os

def aes_encrypt(plain_text, password, salt, iterations):
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=iterations
    )

    key = kdf.derive(password.encode())
    cipher = Cipher(algorithms.AES(key), modes.CBC(salt), backend=default_backend())
    
    # padding
    padder = PKCS7(algorithms.AES.block_size).padder()
    plain_text_padded = padder.update(plain_text) + padder.finalize()

    encryptor = cipher.encryptor()
    cipher_text = encryptor.update(plain_text_padded) + encryptor.finalize()
    return b64encode(cipher_text).decode()

# parameters
password = "SomePassword"
salt = b'\x0A\x14\x1E\x28\x32\x3C\x46\x50\x5A\x64\x6E\x78\x82\x8C\x96\xA0'
iterations = 1000
plain_text = "Some String".encode()

encrypted_data = aes_encrypt(plain_text, password, salt, iterations)
print(encrypted_data)

