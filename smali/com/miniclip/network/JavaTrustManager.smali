.class public Lcom/miniclip/network/JavaTrustManager;
.super Ljava/lang/Object;
.source "JavaTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

.field private final keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .local p1, "certs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/miniclip/network/JavaTrustManager;->keyStore:Ljava/security/KeyStore;

    .line 38
    iget-object v6, p0, Lcom/miniclip/network/JavaTrustManager;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 40
    .local v4, "der":[B
    invoke-direct {p0, v4}, Lcom/miniclip/network/JavaTrustManager;->getDerCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 41
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "alias":Ljava/lang/String;
    iget-object v7, p0, Lcom/miniclip/network/JavaTrustManager;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v7, v0, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    goto :goto_0

    .line 45
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "der":[B
    :cond_0
    const-string v6, "X509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 46
    .local v2, "defaultTrustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 48
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 49
    .local v3, "defaultTrustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    iput-object v5, p0, Lcom/miniclip/network/JavaTrustManager;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 50
    return-void
.end method

.method private getDerCert([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "der"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .local v2, "derInputStream":Ljava/io/ByteArrayInputStream;
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 32
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 33
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iget-object v6, p0, Lcom/miniclip/network/JavaTrustManager;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v6, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v3

    .line 66
    .local v3, "originalException":Ljava/security/cert/CertificateException;
    :try_start_1
    const-string v6, "PKIX"

    invoke-static {v6}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v5

    .line 67
    .local v5, "validator":Ljava/security/cert/CertPathValidator;
    const-string v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 68
    .local v2, "factory":Ljava/security/cert/CertificateFactory;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 69
    .local v0, "certPath":Ljava/security/cert/CertPath;
    new-instance v4, Ljava/security/cert/PKIXParameters;

    iget-object v6, p0, Lcom/miniclip/network/JavaTrustManager;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v4, v6}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/security/KeyStore;)V

    .line 70
    .local v4, "params":Ljava/security/cert/PKIXParameters;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 71
    invoke-virtual {v5, v0, v4}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 72
    .end local v0    # "certPath":Ljava/security/cert/CertPath;
    .end local v2    # "factory":Ljava/security/cert/CertificateFactory;
    .end local v4    # "params":Ljava/security/cert/PKIXParameters;
    .end local v5    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "ex":Ljava/lang/Exception;
    throw v3
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
