from cryptography.hazmat.primitives.kdf.pbkdf2 import PBKDF2HMAC
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.padding import PKCS7
from base64 import b64decode

def aes_decrypt(cipher_text, password, salt, iterations):
    kdf = PBKDF2HMAC(
        algorithm=hashes.SHA256(),
        length=32,
        salt=salt,
        iterations=iterations
    )

    key = kdf.derive(password.encode())
    cipher = Cipher(algorithms.AES(key), modes.CBC(salt), backend=default_backend())

    decryptor = cipher.decryptor()
    decrypted_data_padded = decryptor.update(cipher_text) + decryptor.finalize()

    # padding
    unpadder = PKCS7(algorithms.AES.block_size).unpadder()
    decrypted_data = unpadder.update(decrypted_data_padded) + unpadder.finalize()
    
    return decrypted_data.decode()

# parameters
password = "SomePassword"
salt = b'\x0A\x14\x1E\x28\x32\x3C\x46\x50\x5A\x64\x6E\x78\x82\x8C\x96\xA0'
iterations = 1000
encrypted_data = "pd3KFvx8XXWaQZEw3AOM+w=="

decrypted_data = aes_decrypt(b64decode(encrypted_data), password, salt, iterations)
print(decrypted_data)

