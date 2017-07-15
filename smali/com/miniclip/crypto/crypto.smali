.class public Lcom/miniclip/crypto/crypto;
.super Ljava/lang/Object;
.source "crypto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptAES128([B[B[B)[B
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B
    .param p2, "iv"    # [B

    .prologue
    .line 71
    const/4 v0, 0x2

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miniclip/crypto/crypto;->encrypt([B[BILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBlowfish([B[B[B)[B
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B
    .param p2, "iv"    # [B

    .prologue
    .line 76
    const/4 v0, 0x2

    const-string v1, "BLOWFISH/CBC/PKCS5Padding"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miniclip/crypto/crypto;->encrypt([B[BILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static deriveKey(Ljava/lang/String;I[BI)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "keyLength"    # I
    .param p2, "salt"    # [B
    .param p3, "rounds"    # I

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 26
    .local v2, "result":[B
    :try_start_0
    const-string v5, "PBKDF2withHmacSHA1"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 27
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    mul-int/lit8 v6, p1, 0x8

    invoke-direct {v4, v5, p2, p3, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 28
    .local v4, "spec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 29
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 36
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    :goto_0
    if-eqz v2, :cond_0

    .end local v2    # "result":[B
    :goto_1
    return-object v2

    .line 31
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Crypto: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    new-array v2, v5, [B

    goto :goto_1
.end method

.method private static encrypt([B[BILjava/lang/String;[B)[B
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B
    .param p2, "mode"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "iv"    # [B

    .prologue
    .line 41
    const/4 v3, 0x0

    .line 45
    .local v3, "result":[B
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 48
    .local v2, "ivParameter":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p2, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ivParameter":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    if-eqz v3, :cond_0

    .end local v3    # "result":[B
    :goto_1
    return-object v3

    .line 51
    .restart local v3    # "result":[B
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Crypto: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    new-array v3, v5, [B

    goto :goto_1
.end method

.method public static encryptAES128([B[B[B)[B
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B
    .param p2, "iv"    # [B

    .prologue
    .line 61
    const/4 v0, 0x1

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miniclip/crypto/crypto;->encrypt([B[BILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptBlowfish([B[B[B)[B
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B
    .param p2, "iv"    # [B

    .prologue
    .line 66
    const/4 v0, 0x1

    const-string v1, "BLOWFISH/CBC/PKCS5Padding"

    invoke-static {p0, p1, v0, v1, p2}, Lcom/miniclip/crypto/crypto;->encrypt([B[BILjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static hash([BLjava/lang/String;)[B
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 86
    .local v2, "result":[B
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 88
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 89
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 97
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    if-eqz v2, :cond_0

    .end local v2    # "result":[B
    :goto_1
    return-object v2

    .line 92
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hash: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    new-array v2, v3, [B

    goto :goto_1
.end method

.method public static hashMD5([B)[B
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 102
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/miniclip/crypto/crypto;->hash([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashSHA1([B)[B
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 107
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/miniclip/crypto/crypto;->hash([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashSHA256([B)[B
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 112
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/miniclip/crypto/crypto;->hash([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashSHA512([B)[B
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 117
    const-string v0, "SHA-512"

    invoke-static {p0, v0}, Lcom/miniclip/crypto/crypto;->hash([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static hmac([B[BLjava/lang/String;)[B
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 127
    .local v2, "result":[B
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 128
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    .local v3, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 131
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .end local v1    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    if-eqz v2, :cond_0

    .end local v2    # "result":[B
    :goto_1
    return-object v2

    .line 133
    .restart local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    new-array v2, v4, [B

    goto :goto_1
.end method

.method public static hmacMD5([B[B)[B
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 143
    const-string v0, "HmacMD5"

    invoke-static {p0, p1, v0}, Lcom/miniclip/crypto/crypto;->hmac([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSHA1([B[B)[B
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 148
    const-string v0, "HmacSHA1"

    invoke-static {p0, p1, v0}, Lcom/miniclip/crypto/crypto;->hmac([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSHA256([B[B)[B
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 153
    const-string v0, "HmacSHA256"

    invoke-static {p0, p1, v0}, Lcom/miniclip/crypto/crypto;->hmac([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSHA512([B[B)[B
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 158
    const-string v0, "HmacSHA512"

    invoke-static {p0, p1, v0}, Lcom/miniclip/crypto/crypto;->hmac([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
