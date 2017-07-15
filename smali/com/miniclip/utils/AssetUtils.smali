.class public Lcom/miniclip/utils/AssetUtils;
.super Ljava/lang/Object;
.source "AssetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checksum(Ljava/lang/String;ZLjava/lang/String;)[B
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bundle"    # Z
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    .local v7, "result":[B
    const/4 v4, 0x0

    .line 41
    .local v4, "fileStream":Ljava/io/InputStream;
    if-eqz p1, :cond_1

    .line 43
    :try_start_0
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 45
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 52
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 54
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 56
    const v8, 0x8000

    new-array v1, v8, [B

    .line 59
    .local v1, "buffer":[B
    :goto_1
    const/4 v8, 0x0

    const v9, 0x8000

    invoke-virtual {v4, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "bytesRead":I
    if-lez v2, :cond_2

    .line 60
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "md5Checksum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v4, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_0
    :goto_3
    if-eqz v7, :cond_3

    .end local v7    # "result":[B
    :goto_4
    return-object v7

    .line 49
    .restart local v7    # "result":[B
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v4    # "fileStream":Ljava/io/InputStream;
    .local v5, "fileStream":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "fileStream":Ljava/io/InputStream;
    .restart local v4    # "fileStream":Ljava/io/InputStream;
    goto :goto_0

    .line 62
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_2

    .line 74
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v3

    .line 76
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "md5Checksum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    new-array v7, v11, [B

    goto :goto_4
.end method

.method public static isDirectoryInApk(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 24
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    .line 25
    const/4 v2, 0x1

    .line 31
    :goto_0
    return v2

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static md5Checksum(Ljava/lang/String;Z)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bundle"    # Z

    .prologue
    .line 84
    const-string v0, "MD5"

    invoke-static {p0, p1, v0}, Lcom/miniclip/utils/AssetUtils;->checksum(Ljava/lang/String;ZLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
