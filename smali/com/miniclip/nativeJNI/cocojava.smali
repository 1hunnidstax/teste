.class public Lcom/miniclip/nativeJNI/cocojava;
.super Lcom/miniclip/framework/MiniclipAndroidActivity;
.source "cocojava.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/nativeJNI/cocojava$AssertException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HANDLER_CLOSE_DIALOG:I = 0x3

.field private static final HANDLER_EXIT_APP:I = 0x5

.field private static final HANDLER_HIDE_DIALOG:I = 0x2

.field private static final HANDLER_OPEN_URL:I = 0x4

.field private static final HANDLER_SHOW_DIALOG:I = 0x1

.field public static final LIBRARY_SIZE_IN_MB:I = 0x14

.field private static displayedErrorMessage:Z

.field public static mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

.field protected static mHAS_RETINA:Z

.field private static mHandler:Landroid/os/Handler;

.field public static mINGAME_LANDSCAPE:Z

.field protected static mNATIVE_LIBRARY_NAME:Ljava/lang/String;

.field private static mNtpHandler:Lcom/miniclip/NTP/NtpHandler;

.field protected static mONLY_RETINA:Z

.field private static mPingHandler:Lcom/miniclip/Ping/PingHandler;

.field public static mSPINNING_ANIMATION:Z

.field protected static mUSE_PRESERVE_CONTEXT:Z

.field protected static mUpdateRunable:Ljava/lang/Runnable;

.field protected static mUpdateRunableCall:Z


# instance fields
.field private mDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    const-class v0, Lcom/miniclip/nativeJNI/cocojava;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miniclip/nativeJNI/cocojava;->$assertionsDisabled:Z

    .line 97
    sput-boolean v1, Lcom/miniclip/nativeJNI/cocojava;->mUSE_PRESERVE_CONTEXT:Z

    .line 98
    sput-boolean v1, Lcom/miniclip/nativeJNI/cocojava;->mINGAME_LANDSCAPE:Z

    .line 99
    sput-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mSPINNING_ANIMATION:Z

    .line 100
    const-string v0, "game"

    sput-object v0, Lcom/miniclip/nativeJNI/cocojava;->mNATIVE_LIBRARY_NAME:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    .line 111
    sput-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mHAS_RETINA:Z

    .line 112
    sput-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mONLY_RETINA:Z

    .line 114
    sput-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->displayedErrorMessage:Z

    .line 116
    new-instance v0, Lcom/miniclip/NTP/NtpHandler;

    invoke-direct {v0}, Lcom/miniclip/NTP/NtpHandler;-><init>()V

    sput-object v0, Lcom/miniclip/nativeJNI/cocojava;->mNtpHandler:Lcom/miniclip/NTP/NtpHandler;

    .line 118
    new-instance v0, Lcom/miniclip/Ping/PingHandler;

    invoke-direct {v0}, Lcom/miniclip/Ping/PingHandler;-><init>()V

    sput-object v0, Lcom/miniclip/nativeJNI/cocojava;->mPingHandler:Lcom/miniclip/Ping/PingHandler;

    .line 120
    sput-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mUpdateRunableCall:Z

    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;-><init>()V

    return-void
.end method

.method public static DeviceSupportsMultitouch()I
    .locals 2

    .prologue
    .line 770
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static NTP_JAVA_getOffsetFromServer(Ljava/lang/String;)D
    .locals 4
    .param p0, "serverName"    # Ljava/lang/String;

    .prologue
    .line 821
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mNtpHandler:Lcom/miniclip/NTP/NtpHandler;

    invoke-virtual {v1, p0}, Lcom/miniclip/NTP/NtpHandler;->getOffsetFromServer(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 825
    :goto_0
    return-wide v2

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 825
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static NTP_JAVA_getOffsetFromServerListAsync(Ljava/lang/String;II)V
    .locals 1
    .param p0, "serverNames"    # Ljava/lang/String;
    .param p1, "callback"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 829
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mNtpHandler:Lcom/miniclip/NTP/NtpHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miniclip/NTP/NtpHandler;->getOffsetFromServerListAsync(Ljava/lang/String;II)V

    .line 830
    return-void
.end method

.method public static PING_JAVA_simplePingAsync(Ljava/lang/String;II)V
    .locals 1
    .param p0, "serverName"    # Ljava/lang/String;
    .param p1, "callback"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 833
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mPingHandler:Lcom/miniclip/Ping/PingHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/miniclip/Ping/PingHandler;->simplePingAsync(Ljava/lang/String;II)V

    .line 834
    return-void
.end method

.method public static SharedPreferences_getInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 561
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    const-string v2, "GAME_INFO"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 563
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static SharedPreferences_getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 582
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    if-nez v1, :cond_0

    .line 583
    const-string v1, ""

    .line 586
    :goto_0
    return-object v1

    .line 584
    :cond_0
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    const-string v2, "GAME_INFO"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 586
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static SharedPreferences_setInt(Ljava/lang/String;I)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 553
    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    const-string v3, "GAME_INFO"

    const/4 v4, 0x0

    .line 554
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 555
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 556
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 557
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    return-void
.end method

.method public static SharedPreferences_setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 569
    :try_start_0
    sget-object v3, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    const-string v4, "GAME_INFO"

    const/4 v5, 0x0

    .line 570
    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 571
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 572
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v1

    .line 577
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "JAVAINFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set user defaults: key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miniclip/nativeJNI/cocojava;ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/nativeJNI/cocojava;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/miniclip/nativeJNI/cocojava;->showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miniclip/nativeJNI/cocojava;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/nativeJNI/cocojava;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/miniclip/nativeJNI/cocojava;->openURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miniclip/nativeJNI/cocojava;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/nativeJNI/cocojava;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method public static availableMemoryOnDevice()F
    .locals 12

    .prologue
    .line 695
    new-instance v6, Landroid/os/StatFs;

    sget-object v7, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v7}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 696
    .local v6, "statFs":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 697
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v10, v7

    mul-long v8, v10, v2

    .line 698
    .local v8, "totalSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v10, v7

    mul-long v0, v10, v2

    .line 699
    .local v0, "availableSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v7

    int-to-long v10, v7

    mul-long v4, v10, v2

    .line 701
    .local v4, "freeSize":J
    const-wide/32 v10, 0x100000

    div-long v10, v4, v10

    long-to-float v7, v10

    return v7
.end method

.method public static cleanAndroidData()V
    .locals 2

    .prologue
    .line 676
    const-string v0, "APP_VERSION_NUMBER"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/miniclip/nativeJNI/cocojava;->SharedPreferences_setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 678
    return-void
.end method

.method public static closeMessageBox(I)V
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 409
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 410
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 411
    new-instance v1, Lcom/miniclip/nativeJNI/DialogMessage;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/DialogMessage;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method

.method public static copyAsset(Ljava/lang/String;)V
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v5, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 854
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 855
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 857
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 858
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v2, v4}, Lcom/miniclip/nativeJNI/cocojava;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 860
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 861
    const/4 v2, 0x0

    .line 862
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 863
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 864
    const/4 v3, 0x0

    .line 868
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v1

    .line 866
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "tag"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 874
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 875
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 877
    :cond_0
    return-void
.end method

.method public static custom_logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 594
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$7;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/nativeJNI/cocojava$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 6
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 995
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 998
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1000
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1002
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1004
    const-string v4, "Activity"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1000
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1007
    :cond_1
    invoke-static {v0}, Lcom/miniclip/nativeJNI/cocojava;->deleteDirectory(Ljava/io/File;)V

    goto :goto_2

    .line 1010
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static displayErrorMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-boolean v1, Lcom/miniclip/nativeJNI/cocojava;->displayedErrorMessage:Z

    if-eqz v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miniclip/nativeJNI/cocojava;->displayedErrorMessage:Z

    .line 192
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 193
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    const/4 v1, -0x1

    const-string v2, "Ok"

    new-instance v3, Lcom/miniclip/nativeJNI/cocojava$2;

    invoke-direct {v3}, Lcom/miniclip/nativeJNI/cocojava$2;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 200
    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$3;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/cocojava$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static displayInfoMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 214
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v1, -0x1

    const-string v2, "Ok"

    new-instance v3, Lcom/miniclip/nativeJNI/cocojava$4;

    invoke-direct {v3}, Lcom/miniclip/nativeJNI/cocojava$4;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 222
    return-void
.end method

.method public static displayLowStorageMessage()V
    .locals 1

    .prologue
    .line 969
    const/16 v0, 0x3ed

    invoke-static {v0}, Lcom/miniclip/nativeJNI/cocojava;->displayLowStorageMessage(I)V

    .line 970
    return-void
.end method

.method public static displayLowStorageMessage(I)V
    .locals 6
    .param p0, "errorCode"    # I

    .prologue
    .line 973
    invoke-static {p0}, Lcom/miniclip/platform/MCApplication;->signalFatalError(I)V

    .line 974
    const-string v2, "load_library_error_title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/miniclip/platform/MCApplication;->getFatalErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miniclip/nativeJNI/cocojava;->getResourceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "title":Ljava/lang/String;
    const-string v2, "load_library_error_text"

    const-string v3, "Please check if you have at least %d MB of free disk space.\nIf the problem persists, reinstall the game or contact us at support@miniclip.com."

    invoke-static {v2, v3}, Lcom/miniclip/nativeJNI/cocojava;->getResourceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, "text":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/miniclip/nativeJNI/cocojava;->displayErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public static displayMCApplicationErrorMessage()V
    .locals 4

    .prologue
    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/miniclip/platform/MCApplication;->getFatalErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "title":Ljava/lang/String;
    const-string v0, "Please restart or reinstall the game.\nIf the problem persists, please contact us at support@miniclip.com"

    .line 983
    .local v0, "text":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/miniclip/nativeJNI/cocojava;->displayErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public static displayWaitingForOperationMessage()V
    .locals 3

    .prologue
    .line 988
    const-string v1, "pending_operation_text"

    const-string v2, "Waiting for current operation. If it takes too long, please restart and try again."

    invoke-static {v1, v2}, Lcom/miniclip/nativeJNI/cocojava;->getResourceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/miniclip/nativeJNI/cocojava;->displayInfoMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public static exitApplication()V
    .locals 2

    .prologue
    .line 669
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 670
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 672
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 673
    return-void
.end method

.method public static getAndroidVersion()I
    .locals 1

    .prologue
    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAppVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->getApplicationVersionNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 934
    const-string v2, "device"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 949
    :cond_0
    :goto_0
    return-object v1

    .line 936
    :cond_1
    const-string v2, "version"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 937
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0

    .line 938
    :cond_2
    const-string v2, "brand"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 939
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0

    .line 940
    :cond_3
    const-string v2, "name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 941
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 942
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 943
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 949
    .end local v0    # "manufacturer":Ljava/lang/String;
    .end local v1    # "model":Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 10
    .param p0, "preferIPv4"    # Z

    .prologue
    .line 1026
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1028
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1030
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1032
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1034
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1037
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 1038
    .local v6, "sAddr":Ljava/lang/String;
    instance-of v5, v0, Ljava/net/Inet4Address;

    .line 1040
    .local v5, "isIPv4":Z
    if-eqz p0, :cond_3

    if-eqz v5, :cond_3

    .line 1054
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v6

    .line 1044
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "isIPv4":Z
    .restart local v6    # "sAddr":Ljava/lang/String;
    :cond_3
    if-nez p0, :cond_1

    if-nez v5, :cond_1

    .line 1046
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1047
    .local v2, "delim":I
    if-ltz v2, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 1052
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "isIPv4":Z
    .end local v6    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1054
    :cond_4
    const-string v6, ""

    goto :goto_0
.end method

.method public static getResourceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 954
    move-object v1, p1

    .line 958
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    sget-object v4, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 960
    .local v0, "resourceID":I
    if-lez v0, :cond_0

    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v2, v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 964
    .end local v0    # "resourceID":I
    :goto_0
    return-object v1

    .restart local v0    # "resourceID":I
    :cond_0
    move-object v1, p1

    .line 960
    goto :goto_0

    .line 962
    .end local v0    # "resourceID":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getScreenSize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 181
    .local v0, "size":Landroid/graphics/Point;
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 182
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 183
    return-object v0
.end method

.method public static getTimezoneOffset()I
    .locals 6

    .prologue
    .line 1015
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1016
    .local v0, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 1018
    .local v1, "mTimeZone":Ljava/util/TimeZone;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1019
    .local v2, "now":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    return v3
.end method

.method public static hideMessageBox(I)V
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 401
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 402
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 403
    new-instance v1, Lcom/miniclip/nativeJNI/DialogMessage;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/DialogMessage;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    return-void
.end method

.method public static isInstalledOnSdCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 165
    :try_start_0
    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "filesDir":Ljava/lang/String;
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    const-string v2, "/mnt/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/sdcard/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static java_assert(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "line"    # I
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 1067
    return-void
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 719
    :try_start_0
    const-string v6, "MD5"

    .line 720
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 722
    .local v0, "digest":Ljava/security/MessageDigest;
    :try_start_1
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 732
    .local v5, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 733
    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 734
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 724
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    :catch_0
    move-exception v2

    .line 726
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 737
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 738
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 740
    const/4 v6, 0x0

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v6

    .line 735
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "hexString":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v5    # "messageDigest":[B
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto :goto_2
.end method

.method public static openLink(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 614
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 615
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 616
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 618
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 619
    return-void
.end method

.method private openURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/cocojava;->isOnline()Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/miniclip/nativeJNI/cocojava;->showNoInternetDialog()V

    .line 654
    :goto_0
    return-void

    .line 648
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/cocojava;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static percentEncodeUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 602
    const-string v1, ""

    .line 604
    .local v1, "encodedString":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 610
    :goto_0
    return-object v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "destination"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 779
    move-object v0, p0

    .line 780
    .local v0, "dest":Ljava/lang/String;
    move-object v1, p1

    .line 781
    .local v1, "subj":Ljava/lang/String;
    move-object v2, p2

    .line 783
    .local v2, "txt":Ljava/lang/String;
    sget-object v3, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v4, Lcom/miniclip/nativeJNI/cocojava$10;

    invoke-direct {v4, v0, v1, v2}, Lcom/miniclip/nativeJNI/cocojava$10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 801
    return-void
.end method

.method public static sendSMS(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 804
    move-object v0, p0

    .line 806
    .local v0, "txt":Ljava/lang/String;
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v2, Lcom/miniclip/nativeJNI/cocojava$11;

    invoke-direct {v2, v0}, Lcom/miniclip/nativeJNI/cocojava$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 817
    return-void
.end method

.method public static setClipboardText(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 837
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$12;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/cocojava$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 846
    return-void
.end method

.method public static showDatePickerDialog_JNI(III)V
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 918
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/miniclip/nativeJNI/cocojava$15;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 923
    return-void
.end method

.method public static showDatePickerDialog_JNI(IIII)V
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "theme"    # I

    .prologue
    .line 926
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miniclip/nativeJNI/cocojava$16;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method private showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cancelable"    # Z
    .param p5, "buttonTitles"    # [Ljava/lang/String;

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "dialog":Landroid/app/Dialog;
    iget-object v3, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 318
    array-length v3, p5

    const/4 v4, 0x4

    if-ge v3, v4, :cond_5

    .line 319
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 321
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p5

    if-ge v2, v3, :cond_3

    .line 322
    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/cocojava;->int2ButtonValue(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 323
    aget-object v3, p5, v2

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/cocojava;->int2ButtonValue(I)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    .line 325
    aget-object v3, p5, v2

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 326
    :cond_2
    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/cocojava;->int2ButtonValue(I)I

    move-result v3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    .line 327
    aget-object v3, p5, v2

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 329
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 340
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v3, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v2    # "i":I
    :goto_2
    new-instance v3, Lcom/miniclip/nativeJNI/cocojava$6;

    invoke-direct {v3, p0, p4}, Lcom/miniclip/nativeJNI/cocojava$6;-><init>(Lcom/miniclip/nativeJNI/cocojava;Z)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 362
    invoke-virtual {v1, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 363
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 364
    return-void

    .line 331
    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 332
    invoke-virtual {v1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 333
    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {v3, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, p5

    if-ge v2, v3, :cond_4

    move-object v3, v1

    .line 336
    check-cast v3, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/cocojava;->int2ButtonValue(I)I

    move-result v4

    aget-object v5, p5, v2

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 342
    .end local v2    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dialog":Landroid/app/Dialog;
    check-cast v1, Landroid/app/Dialog;

    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_2
.end method

.method public static showHtmlDialog(Ljava/lang/String;I)V
    .locals 2
    .param p0, "htmlContent"    # Ljava/lang/String;
    .param p1, "_path"    # I

    .prologue
    .line 745
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$9;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/nativeJNI/cocojava$9;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 767
    return-void
.end method

.method public static showMessageBox(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 3
    .param p0, "msgId"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cancelable"    # Z
    .param p4, "buttonTitles"    # [Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Lcom/miniclip/nativeJNI/DialogMessage;

    invoke-direct {v0, p0}, Lcom/miniclip/nativeJNI/DialogMessage;-><init>(I)V

    .line 388
    .local v0, "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    iput-object p1, v0, Lcom/miniclip/nativeJNI/DialogMessage;->title:Ljava/lang/String;

    .line 389
    iput-object p2, v0, Lcom/miniclip/nativeJNI/DialogMessage;->message:Ljava/lang/String;

    .line 390
    iput-boolean p3, v0, Lcom/miniclip/nativeJNI/DialogMessage;->cancelable:Z

    .line 391
    iput-object p4, v0, Lcom/miniclip/nativeJNI/DialogMessage;->buttonTitles:[Ljava/lang/String;

    .line 393
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 394
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 395
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    sget-object v2, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    return-void
.end method

.method private showNoInternetDialog()V
    .locals 5

    .prologue
    .line 623
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Please enable internet"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 625
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Back"

    new-instance v4, Lcom/miniclip/nativeJNI/cocojava$8;

    invoke-direct {v4, p0}, Lcom/miniclip/nativeJNI/cocojava$8;-><init>(Lcom/miniclip/nativeJNI/cocojava;)V

    .line 626
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 638
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 639
    .local v0, "alert":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 640
    return-void
.end method

.method protected static stringToJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 661
    .local v1, "jsn":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsn":Lorg/json/JSONObject;
    .local v2, "jsn":Lorg/json/JSONObject;
    move-object v1, v2

    .line 665
    .end local v2    # "jsn":Lorg/json/JSONObject;
    .restart local v1    # "jsn":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static vibrateForMS(I)V
    .locals 4
    .param p0, "time"    # I

    .prologue
    .line 689
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    const-string v2, "vibrator"

    .line 690
    invoke-virtual {v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 691
    .local v0, "v":Landroid/os/Vibrator;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 692
    return-void
.end method


# virtual methods
.method buttonValue2Int(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 282
    packed-switch p1, :pswitch_data_0

    .line 293
    sget-boolean v1, Lcom/miniclip/nativeJNI/cocojava;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 287
    :pswitch_0
    const/4 v0, 0x1

    .line 294
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 290
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method closeDialog(I)V
    .locals 3
    .param p1, "msgId"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 378
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method createResources()V
    .locals 18

    .prologue
    .line 446
    const-string v14, "JAVAINFO"

    invoke-virtual/range {p0 .. p0}, Lcom/miniclip/nativeJNI/cocojava;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/miniclip/nativeJNI/cocojava;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "Contents/Resources"

    invoke-direct {v2, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    .local v2, "contRes":Ljava/io/File;
    const-string v14, "JAVAINFO"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 451
    sget-boolean v14, Lcom/miniclip/nativeJNI/cocojava;->mUpdateRunableCall:Z

    if-eqz v14, :cond_0

    .line 452
    sget-object v14, Lcom/miniclip/nativeJNI/cocojava;->mUpdateRunable:Ljava/lang/Runnable;

    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 478
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miniclip/nativeJNI/cocojava;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/miniclip/nativeJNI/cocojava;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 478
    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 481
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v14, "JAVAINFO"

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v14, "JAVAINFO"

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v13, Ljava/util/zip/ZipFile;

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 485
    .local v13, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 487
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 488
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 489
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xf

    if-lt v14, v15, :cond_1

    .line 493
    const-string v14, "assets/unpack/"

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0xe

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 501
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v2, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 503
    .local v8, "newPath":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 505
    .local v11, "parentPath":Ljava/io/File;
    if-eqz v11, :cond_2

    .line 506
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 507
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 511
    invoke-virtual {v13, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v12

    .line 518
    .local v12, "ris":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    .line 519
    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v2, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 520
    .local v9, "newRes":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 521
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 523
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v14, 0x1000

    new-array v1, v14, [B

    .line 524
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "numRead":I
    if-ltz v10, :cond_4

    .line 525
    const/4 v14, 0x0

    invoke-virtual {v7, v1, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 528
    .end local v1    # "buf":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "newRes":Ljava/io/File;
    .end local v10    # "numRead":I
    :catch_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 539
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "newPath":Ljava/io/File;
    .end local v11    # "parentPath":Ljava/io/File;
    .end local v12    # "ris":Ljava/io/InputStream;
    .end local v13    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v4

    .line 541
    .local v4, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 546
    .end local v4    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_2
    return-void

    .line 527
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "buf":[B
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "newPath":Ljava/io/File;
    .restart local v9    # "newRes":Ljava/io/File;
    .restart local v10    # "numRead":I
    .restart local v11    # "parentPath":Ljava/io/File;
    .restart local v12    # "ris":Ljava/io/InputStream;
    .restart local v13    # "zf":Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 532
    .end local v1    # "buf":[B
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "newRes":Ljava/io/File;
    .end local v10    # "numRead":I
    :catch_2
    move-exception v3

    .line 534
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 542
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "newPath":Ljava/io/File;
    .end local v11    # "parentPath":Ljava/io/File;
    .end local v12    # "ris":Ljava/io/InputStream;
    .end local v13    # "zf":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v3

    .line 544
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public firstRun()V
    .locals 3

    .prologue
    .line 225
    const-string v1, "JAVAINFO"

    const-string v2, "firstRun"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->hasFatalErrorOccurred()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {}, Lcom/miniclip/nativeJNI/cocojava;->displayMCApplicationErrorMessage()V

    .line 279
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/cocojava;->loadNativeLibrary()V

    .line 235
    :try_start_0
    invoke-static {}, Lcom/miniclip/platform/MCAssetManager;->firstRun()V

    .line 236
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->firstRun()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$5;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/cocojava$5;-><init>(Lcom/miniclip/nativeJNI/cocojava;)V

    sput-object v1, Lcom/miniclip/nativeJNI/cocojava;->mHandler:Landroid/os/Handler;

    .line 276
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    .line 278
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/miniclip/audio/MCAudio;->setEffectsVolume(F)V

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "JAVAINFO"

    const-string v2, "Initial Load Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    const/16 v1, 0x3eb

    invoke-static {v1}, Lcom/miniclip/platform/MCApplication;->signalFatalError(I)V

    .line 241
    invoke-static {}, Lcom/miniclip/nativeJNI/cocojava;->displayMCApplicationErrorMessage()V

    goto :goto_0
.end method

.method protected getFullAppURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "ERROR! OVERRIDE ME!"

    return-object v0
.end method

.method protected getFullVersionGameImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "ERROR! OVERRIDE ME!"

    return-object v0
.end method

.method hideDialog(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lcom/miniclip/nativeJNI/cocojava;->closeDialog(I)V

    .line 373
    return-void
.end method

.method int2ButtonValue(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, -0x2

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 309
    sget-boolean v1, Lcom/miniclip/nativeJNI/cocojava;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 300
    :pswitch_0
    const/4 v0, -0x1

    .line 310
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 306
    :pswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isOnline()Z
    .locals 3

    .prologue
    .line 681
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/cocojava;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 682
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 683
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 684
    const/4 v2, 0x0

    .line 685
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_0
.end method

.method protected loadNativeLibrary()V
    .locals 3

    .prologue
    .line 134
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mNATIVE_LIBRARY_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MiniclipAndroidActivity"

    const-string v2, "Library Load Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 142
    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$1;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/cocojava$1;-><init>(Lcom/miniclip/nativeJNI/cocojava;)V

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/cocojava;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public logCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v0, "cocojava"

    const-string v1, "OVERRIDE logCustomEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .prologue
    .line 418
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 419
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 420
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 421
    invoke-virtual {p0, p2}, Lcom/miniclip/nativeJNI/cocojava;->buttonValue2Int(I)I

    move-result v2

    .line 420
    invoke-static {v1, v2}, Lcom/miniclip/nativeJNI/CocoJNI;->MonMessageBoxButtonPressed(II)V

    .line 424
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    sput-object p0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 159
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/cocojava;->setVolumeControlStream(I)V

    .line 160
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->onDestroy()V

    .line 439
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 440
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 428
    invoke-super {p0, p1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->onWindowFocusChanged(Z)V

    .line 432
    return-void
.end method

.method public showDatePickerDialog(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miniclip/nativeJNI/cocojava;->showDatePickerDialog(IIII)V

    .line 882
    return-void
.end method

.method public showDatePickerDialog(IIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "theme"    # I

    .prologue
    .line 886
    add-int/lit8 p2, p2, -0x1

    .line 888
    if-nez p4, :cond_0

    .line 889
    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "DatePicker"

    const-string v3, "style"

    sget-object v4, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 891
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    sget-object v1, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v3, Lcom/miniclip/nativeJNI/cocojava$13;

    invoke-direct {v3, p0}, Lcom/miniclip/nativeJNI/cocojava$13;-><init>(Lcom/miniclip/nativeJNI/cocojava;)V

    move v2, p4

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 903
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    new-instance v1, Lcom/miniclip/nativeJNI/cocojava$14;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/cocojava$14;-><init>(Lcom/miniclip/nativeJNI/cocojava;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 914
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 915
    return-void
.end method
