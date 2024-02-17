### Error codes
```
KDC_ERR_NONE                - No error
KDC_ERR_NAME_EXP            - Client's entry in database has expired
KDC_ERR_SERVICE_EXP         - Server's entry in database has expired
KDC_ERR_BAD_PVNO            - Requested protocol version number not supported
KDC_ERR_C_ OLD_MAST_KVNO    - Client key encrypted in oldmaster key
KDC_ERR_S_OLD_MAST_KVNO     - Server key encrypted in old master key
KDC_ERR_S_PRINCIPAL_UNKNOWN - Server not found in Kerberos database
PRINCIPAL_NOT_UNIQUE        - Multiple principal entries in database
KDC_ERR_NULL_KEY            - The client or server has a null key
KDC_ERR_CANNOT_POSTDATE     - Ticket not eligible for postdating
KDC_ERR_NEVER_VALID         - Requested start time is later than end time
KDC_ERR_POLICY              - KDC policy rejects request
KDC_ERR_BADOPTION           - KDC cannot accommodate requested option
KDC_ERR_ETYPE_NOSUPP        - KDC has no support for encryption type
KDC_ERR_SUMTYPE_NOSUPP      - KDC has no support for checksum type
KDC_ERR_PADATA_TYPE_NOSUPP  - KDC has no support for padata type
KDC_ERR_TRTYPE_NOSUPP       - KDC has no support for transited type
KDC_ERR_CLIENT_REVOKED      - Clients credentials have been revoked
KDC_ERR_SERVICE_REVOKED     - Credentials for server have been revoked
KDC_ERR_TGT_REVOKED         - TGT has been revoked
KDC_ERR_CLIENT_NOTYET       - Client not yet valid 
KDC_ERR_SERVICE_NOTYET      - Server not yet valid 
KDC_ERR_KEY_EXPIRED         - Password has expired 
KDC_ERR_PREAUTH_FAILED      - Pre-authentication information was invalid
KDC_ERR_PREAUTH_REQUIRED    - Additional pre-authentication required
KRB_AP_ERR_BAD_INTEGRITY    - Integrity check on decrypted field failed
KRB_AP_ERR_TKT_EXPIRED      - Ticket expired
KRB_AP_ERR_TKT_NYV          - Ticket not yet valid
KRB_AP_ERR_REPEAT           - Request is a replay
KRB_AP_ERR_NOT_US           - The ticket is not for us
KRB_AP_ERR_BADMATCH         - Ticket and authenticator do not match
KRB_AP_ERR_SKEW             - Clock skew too great
KRB_AP_ERR_BADADDR          - Incorrect net address
KRB_AP_ERR_BADVERSION       - Protocol version mismatch
KRB_AP_ERR_MSG_TYPE         - Invalid msg type
KRB_AP_ERR_MODIFIED         - Message stream modified
KRB_AP_ERR_BADORDER         - Message out of order
KRB_AP_ERR_BADKEYVER        - Specified version of key is not available
KRB_AP_ERR_NOKEY            - Service key not available
KRB_AP_ERR_MUT_FAIL         - Mutual authentication failed
KRB_AP_ERR_BADDIRECTION     - Incorrect message direction
KRB_AP_ERR_METHOD           - Alternative authentication method required
KRB_AP_ERR_BADSEQ           - Incorrect sequence number in message
KRB_AP_ERR_INAPP_CKSUM      - Inappropriate type of checksum in message
KRB_ERR_GENERIC             - Generic error
KRB_ERR_FIELD_TOOLONG       - Field is too long for this implementation
```

