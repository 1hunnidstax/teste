.class public Lcom/miniclip/Ping/PingHandler;
.super Ljava/lang/Object;
.source "PingHandler.java"


# instance fields
.field private _handler:Landroid/os/Handler;

.field private _status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miniclip/Ping/PingHandler;->_status:I

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miniclip/Ping/PingHandler;->_handler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/Ping/PingHandler;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/Ping/PingHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miniclip/Ping/PingHandler;->simplePing(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miniclip/Ping/PingHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/Ping/PingHandler;

    .prologue
    .line 13
    iget v0, p0, Lcom/miniclip/Ping/PingHandler;->_status:I

    return v0
.end method

.method static synthetic access$102(Lcom/miniclip/Ping/PingHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/Ping/PingHandler;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/miniclip/Ping/PingHandler;->_status:I

    return p1
.end method

.method static synthetic access$200(Lcom/miniclip/Ping/PingHandler;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/Ping/PingHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miniclip/Ping/PingHandler;->returnResult(IZ)V

    return-void
.end method

.method private returnResult(IZ)V
    .locals 3
    .param p1, "callback"    # I
    .param p2, "result"    # Z

    .prologue
    .line 36
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/Ping/PingHandler$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/miniclip/Ping/PingHandler$1;-><init>(Lcom/miniclip/Ping/PingHandler;IZ)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method private simplePing(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "serverName"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 26
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 27
    .local v2, "socket":Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v3, 0x1

    .line 32
    .end local v2    # "socket":Ljava/net/Socket;
    :goto_0
    return v3

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public simplePingAsync(Ljava/lang/String;II)V
    .locals 6
    .param p1, "serverName"    # Ljava/lang/String;
    .param p2, "callback"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 45
    iget v1, p0, Lcom/miniclip/Ping/PingHandler;->_status:I

    if-eqz v1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/miniclip/Ping/PingHandler;->_status:I

    .line 48
    new-instance v0, Lcom/miniclip/Ping/PingHandler$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/miniclip/Ping/PingHandler$2;-><init>(Lcom/miniclip/Ping/PingHandler;Ljava/lang/String;II)V

    .line 67
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    iget-object v1, p0, Lcom/miniclip/Ping/PingHandler;->_handler:Landroid/os/Handler;

    new-instance v2, Lcom/miniclip/Ping/PingHandler$3;

    invoke-direct {v2, p0, p2}, Lcom/miniclip/Ping/PingHandler$3;-><init>(Lcom/miniclip/Ping/PingHandler;I)V

    int-to-long v4, p3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
