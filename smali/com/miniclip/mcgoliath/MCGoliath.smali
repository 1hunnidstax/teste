.class public Lcom/miniclip/mcgoliath/MCGoliath;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCGoliath.java"


# static fields
.field public static goliathFile:Ljava/lang/String;


# instance fields
.field private goliathInstanceID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "mcgoliath_info.goliath"

    sput-object v0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "gameID"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "hmacKey"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/mcgoliath/MCGoliath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "gameID"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "hmacKey"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    .line 33
    if-nez p6, :cond_0

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MCGoliath ERROR: Could not create MCGoliath --> Context was null."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/mcgoliath/MCGoliath;->init()V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-virtual {p6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/miniclip/mcgoliath/MCGoliath;->goliathFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .local v5, "saveFilepath":Ljava/lang/String;
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/miniclip/mcgoliath/MCGoliath;->newGoliath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Goliath ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miniclip/mcgoliath/MCGoliath;->getPathForSaveFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/miniclip/mcgoliath/MCGoliath;->start()Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "gameID"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "hmacKey"    # Ljava/lang/String;
    .param p6, "pathForSaveFile"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    .line 28
    invoke-static/range {p1 .. p6}, Lcom/miniclip/mcgoliath/MCGoliath;->newGoliath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Goliath ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private static native goliathApiKey(I)Ljava/lang/String;
.end method

.method private static native goliathGameID(I)Ljava/lang/String;
.end method

.method private static native goliathHmacKey(I)Ljava/lang/String;
.end method

.method private static native goliathHost(I)Ljava/lang/String;
.end method

.method private static native goliathMaxNumberOfEventsPerPackage(I)I
.end method

.method private static native goliathPathForSaveFile(I)Ljava/lang/String;
.end method

.method private static native goliathSerializationInterval(I)I
.end method

.method private static native goliathTransmissionInterval(I)I
.end method

.method private static native goliathVersion(I)Ljava/lang/String;
.end method

.method private static native newGoliath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native postEventToGoliath(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native setGoliathApiKey(ILjava/lang/String;)V
.end method

.method private static native setGoliathGameID(ILjava/lang/String;)V
.end method

.method private static native setGoliathHmacKey(ILjava/lang/String;)V
.end method

.method private static native setGoliathHost(ILjava/lang/String;)V
.end method

.method private static native setGoliathMaxNumberOfEventsPerPackage(II)V
.end method

.method private static native setGoliathPathForSaveFile(ILjava/lang/String;)V
.end method

.method private static native setGoliathSerializationInterval(II)V
.end method

.method private static native setGoliathTransmissionInterval(II)V
.end method

.method private static native setGoliathVersion(ILjava/lang/String;)V
.end method

.method private static native startGoliath(I)V
.end method

.method private static native stopGoliath(I)V
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathApiKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathGameID(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHmacKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathHmacKey(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathHost(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxNumberOfEventsPerPackage()I
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 153
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    const/4 v0, -0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathMaxNumberOfEventsPerPackage(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPathForSaveFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathPathForSaveFile(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSerializationInterval()I
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 185
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    const/4 v0, -0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathSerializationInterval(I)I

    move-result v0

    goto :goto_0
.end method

.method public getTransmissionInterval()I
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    const/4 v0, -0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathTransmissionInterval(I)I

    move-result v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->goliathVersion(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 50
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/miniclip/mcgoliath/MCGoliath;->start()Z

    .line 240
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/miniclip/mcgoliath/MCGoliath;->stop()Z

    .line 247
    return-void
.end method

.method public postEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventJson"    # Ljava/lang/String;

    .prologue
    .line 202
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1, p2}, Lcom/miniclip/mcgoliath/MCGoliath;->postEventToGoliath(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 112
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathApiKey(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 2
    .param p1, "gameID"    # Ljava/lang/String;

    .prologue
    .line 96
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathGameID(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setHmacKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "hmacKey"    # Ljava/lang/String;

    .prologue
    .line 128
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathHmacKey(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 80
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathHost(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setMaxNumberOfEventsPerPackage(I)V
    .locals 2
    .param p1, "maxNumberOfEventsPerPackage"    # I

    .prologue
    .line 160
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathMaxNumberOfEventsPerPackage(II)V

    goto :goto_0
.end method

.method public setPathForSaveFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathForSaveFile"    # Ljava/lang/String;

    .prologue
    .line 144
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 145
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathPathForSaveFile(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setSerializationInterval(I)V
    .locals 2
    .param p1, "serializationInterval"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathSerializationInterval(II)V

    goto :goto_0
.end method

.method public setTransmissionInterval(I)V
    .locals 2
    .param p1, "transmissionInterval"    # I

    .prologue
    .line 176
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 177
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathTransmissionInterval(II)V

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 64
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0, p1}, Lcom/miniclip/mcgoliath/MCGoliath;->setGoliathVersion(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    .line 217
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->startGoliath(I)V

    .line 219
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    if-gez v0, :cond_0

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ERROR: Cannot access MCGoliath: it was not properly initialized!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    iget v0, p0, Lcom/miniclip/mcgoliath/MCGoliath;->goliathInstanceID:I

    invoke-static {v0}, Lcom/miniclip/mcgoliath/MCGoliath;->stopGoliath(I)V

    .line 229
    const/4 v0, 0x1

    goto :goto_0
.end method
