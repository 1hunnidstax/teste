.class public Lcom/inmobi/commons/core/utilities/a/c;
.super Ljava/lang/Object;
.source "UidEncryptionUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/commons/core/utilities/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    .line 25
    const-string v0, "RSA/ECB/nopadding"

    .line 26
    const-string v0, "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

    .line 27
    const-string v0, "010001"

    .line 28
    const-string v0, "RSA"

    .line 32
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 56
    :goto_0
    return-object v0

    .line 37
    :cond_1
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 38
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "010001"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 39
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 40
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 41
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 43
    const-string v2, "RSA/ECB/nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 44
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/core/utilities/a/c;->a([BILjavax/crypto/Cipher;)[B

    move-result-object v0

    .line 48
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/utilities/a/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in getting encrypted UID-map; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a([BILjavax/crypto/Cipher;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    const/4 v0, 0x0

    .line 61
    .line 62
    new-array v2, v0, [B

    .line 63
    new-array v3, v0, [B

    .line 65
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 66
    :cond_0
    array-length v4, p0

    .line 68
    new-array v2, v1, [B

    move v7, v0

    move-object v0, v2

    move-object v2, v3

    move v3, v7

    .line 70
    :goto_0
    if-ge v3, v4, :cond_2

    .line 71
    if-lez v3, :cond_1

    rem-int v5, v3, v1

    if-nez v5, :cond_1

    .line 72
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Lcom/inmobi/commons/core/utilities/a/c;->a([B[B)[B

    move-result-object v2

    .line 75
    add-int/lit8 v0, v3, 0x40

    if-le v0, v4, :cond_3

    .line 76
    sub-int v0, v4, v3

    .line 78
    :goto_1
    new-array v0, v0, [B

    .line 80
    :cond_1
    rem-int v5, v3, v1

    aget-byte v6, p0, v3

    aput-byte v6, v0, v5

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Lcom/inmobi/commons/core/utilities/a/c;->a([B[B)[B

    move-result-object v0

    .line 85
    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 90
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-object v0
.end method
