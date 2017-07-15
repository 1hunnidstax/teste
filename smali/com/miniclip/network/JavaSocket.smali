.class public Lcom/miniclip/network/JavaSocket;
.super Ljava/lang/Object;
.source "JavaSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/network/JavaSocket$SocketType;
    }
.end annotation


# static fields
.field private static _certs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private _datagramSocket:Ljava/net/DatagramSocket;

.field private _dout:Ljava/io/DataOutputStream;

.field private _host:Ljava/net/InetAddress;

.field private _hostAddress:Ljava/lang/String;

.field private _hostPort:I

.field private _isConnected:Z

.field private _nativeObject:J

.field private _packetBuffer:Ljava/io/ByteArrayOutputStream;

.field private _packetSize:I

.field private _queuedData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private _socketType:Lcom/miniclip/network/JavaSocket$SocketType;

.field private _usePacketSizeHeader:Z

.field private _workBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IJIZ)V
    .locals 4
    .param p1, "socketType"    # Ljava/lang/String;
    .param p2, "hostAddress"    # Ljava/lang/String;
    .param p3, "hostPort"    # I
    .param p4, "nativeObject"    # J
    .param p6, "workBufferSize"    # I
    .param p7, "usePacketSizeHeader"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/miniclip/network/JavaSocket;->_hostPort:I

    .line 65
    iput-wide p4, p0, Lcom/miniclip/network/JavaSocket;->_nativeObject:J

    .line 66
    iput p6, p0, Lcom/miniclip/network/JavaSocket;->_workBufferSize:I

    .line 67
    iput-boolean p7, p0, Lcom/miniclip/network/JavaSocket;->_usePacketSizeHeader:Z

    .line 68
    iput-object v1, p0, Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;

    .line 69
    iput-boolean v0, p0, Lcom/miniclip/network/JavaSocket;->_isConnected:Z

    .line 70
    iput-object v1, p0, Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;

    .line 71
    iput-object v1, p0, Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miniclip/network/JavaSocket;->_queuedData:Ljava/util/List;

    .line 73
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    .line 74
    iput v0, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Socket Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :sswitch_0
    const-string v3, "tcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "tcpssl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "udp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->TCP:Lcom/miniclip/network/JavaSocket$SocketType;

    iput-object v0, p0, Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;

    .line 88
    :goto_1
    return-void

    .line 80
    :pswitch_1
    sget-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->TCPSSL:Lcom/miniclip/network/JavaSocket$SocketType;

    iput-object v0, p0, Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;

    goto :goto_1

    .line 83
    :pswitch_2
    sget-object v0, Lcom/miniclip/network/JavaSocket$SocketType;->UDP:Lcom/miniclip/network/JavaSocket$SocketType;

    iput-object v0, p0, Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;

    goto :goto_1

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x34661975 -> :sswitch_1
        0x1bfe1 -> :sswitch_0
        0x1c3c1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/miniclip/network/JavaSocket;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miniclip/network/JavaSocket;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miniclip/network/JavaSocket;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miniclip/network/JavaSocket;)Ljava/io/DataOutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miniclip/network/JavaSocket;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;
    .param p1, "x1"    # Ljava/io/DataOutputStream;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miniclip/network/JavaSocket;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;
    .param p1, "x1"    # Ljava/net/DatagramSocket;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miniclip/network/JavaSocket;)I
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget v0, p0, Lcom/miniclip/network/JavaSocket;->_workBufferSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/miniclip/network/JavaSocket;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/miniclip/network/JavaSocket;->_isConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miniclip/network/JavaSocket;)J
    .locals 2
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/miniclip/network/JavaSocket;->_nativeObject:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miniclip/network/JavaSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miniclip/network/JavaSocket;->sendQueuedData()V

    return-void
.end method

.method static synthetic access$700(Lcom/miniclip/network/JavaSocket;)I
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget v0, p0, Lcom/miniclip/network/JavaSocket;->_hostPort:I

    return v0
.end method

.method static synthetic access$800(Lcom/miniclip/network/JavaSocket;)Lcom/miniclip/network/JavaSocket$SocketType;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addTrustedCertificate([B)Z
    .locals 1
    .param p0, "certificateData"    # [B

    .prologue
    .line 320
    sget-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    .line 322
    :cond_0
    sget-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public static clearTrustedCertificates()V
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    .line 329
    :cond_0
    sget-object v0, Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    return-void
.end method

.method private connectTCP()Z
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miniclip/network/JavaSocket$2;

    invoke-direct {v1, p0}, Lcom/miniclip/network/JavaSocket$2;-><init>(Lcom/miniclip/network/JavaSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method private connectUDP()Z
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miniclip/network/JavaSocket$1;

    invoke-direct {v1, p0}, Lcom/miniclip/network/JavaSocket$1;-><init>(Lcom/miniclip/network/JavaSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public static native onConnect(J)V
.end method

.method public static native onData(J[BII)V
.end method

.method public static native onDisconnect(JILjava/lang/String;)V
.end method

.method private sendDataPacked([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/miniclip/network/JavaSocket;->_isConnected:Z

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_queuedData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;

    sget-object v1, Lcom/miniclip/network/JavaSocket$SocketType;->UDP:Lcom/miniclip/network/JavaSocket$SocketType;

    if-ne v0, v1, :cond_1

    .line 307
    invoke-direct {p0, p1}, Lcom/miniclip/network/JavaSocket;->sendDataUDP([B)Z

    move-result v0

    goto :goto_0

    .line 308
    :cond_1
    invoke-direct {p0, p1}, Lcom/miniclip/network/JavaSocket;->sendDataTCP([B)Z

    move-result v0

    goto :goto_0
.end method

.method private sendDataTCP([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const/4 v1, 0x1

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendDataUDP([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 267
    iget-object v2, p0, Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_0

    .line 269
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;

    iget v4, p0, Lcom/miniclip/network/JavaSocket;->_hostPort:I

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 270
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v2, 0x1

    .line 276
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    :goto_0
    return v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendQueuedData()V
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Lcom/miniclip/network/JavaSocket;->_queuedData:Ljava/util/List;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_queuedData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 259
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/miniclip/network/JavaSocket;->sendDataPacked([B)Z

    goto :goto_0

    .line 263
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 262
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_queuedData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 263
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;

    sget-object v1, Lcom/miniclip/network/JavaSocket$SocketType;->UDP:Lcom/miniclip/network/JavaSocket$SocketType;

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/miniclip/network/JavaSocket;->connectUDP()Z

    move-result v0

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/miniclip/network/JavaSocket;->connectTCP()Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/miniclip/network/JavaSocket;->_isConnected:Z

    return v0
.end method

.method public onDataPartial(I[B)V
    .locals 7
    .param p1, "size"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 233
    iget-boolean v1, p0, Lcom/miniclip/network/JavaSocket;->_usePacketSizeHeader:Z

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p2, v5, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 236
    :goto_0
    iget v1, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lt v1, v6, :cond_0

    .line 237
    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    .line 239
    :cond_0
    iget v1, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    iget v2, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    if-lt v1, v2, :cond_2

    .line 240
    iget-wide v2, p0, Lcom/miniclip/network/JavaSocket;->_nativeObject:J

    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget v4, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    invoke-static {v2, v3, v1, v6, v4}, Lcom/miniclip/network/JavaSocket;->onData(J[BII)V

    .line 241
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    .local v0, "newPacketBuffer":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    add-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 243
    iput-object v0, p0, Lcom/miniclip/network/JavaSocket;->_packetBuffer:Ljava/io/ByteArrayOutputStream;

    .line 244
    iput v5, p0, Lcom/miniclip/network/JavaSocket;->_packetSize:I

    goto :goto_0

    .line 252
    .end local v0    # "newPacketBuffer":Ljava/io/ByteArrayOutputStream;
    :cond_1
    iget-wide v2, p0, Lcom/miniclip/network/JavaSocket;->_nativeObject:J

    invoke-static {v2, v3, p2, v5, p1}, Lcom/miniclip/network/JavaSocket;->onData(J[BII)V

    .line 254
    :cond_2
    return-void
.end method

.method public sendData([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 292
    iget-boolean v1, p0, Lcom/miniclip/network/JavaSocket;->_usePacketSizeHeader:Z

    if-eqz v1, :cond_0

    .line 293
    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 294
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 298
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-direct {p0, p1}, Lcom/miniclip/network/JavaSocket;->sendDataPacked([B)Z

    move-result v1

    return v1
.end method

.method public setNativeObject(J)V
    .locals 1
    .param p1, "nativeObject"    # J

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/miniclip/network/JavaSocket;->_nativeObject:J

    .line 317
    return-void
.end method

.method public setWorkBufferSize(I)V
    .locals 0
    .param p1, "workBufferSize"    # I

    .prologue
    .line 312
    iput p1, p0, Lcom/miniclip/network/JavaSocket;->_workBufferSize:I

    .line 313
    return-void
.end method
