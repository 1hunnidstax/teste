.class Lcom/miniclip/network/JavaSocket$1;
.super Ljava/lang/Object;
.source "JavaSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/network/JavaSocket;->connectUDP()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/network/JavaSocket;


# direct methods
.method constructor <init>(Lcom/miniclip/network/JavaSocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/network/JavaSocket;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    iget-object v4, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/miniclip/network/JavaSocket;->access$100(Lcom/miniclip/network/JavaSocket;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    # setter for: Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;
    invoke-static {v3, v4}, Lcom/miniclip/network/JavaSocket;->access$002(Lcom/miniclip/network/JavaSocket;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 95
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V

    # setter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v3, v4}, Lcom/miniclip/network/JavaSocket;->access$202(Lcom/miniclip/network/JavaSocket;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 96
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_workBufferSize:I
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$300(Lcom/miniclip/network/JavaSocket;)I

    move-result v3

    new-array v0, v3, [B

    .line 97
    .local v0, "buffer":[B
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    const/4 v4, 0x1

    # setter for: Lcom/miniclip/network/JavaSocket;->_isConnected:Z
    invoke-static {v3, v4}, Lcom/miniclip/network/JavaSocket;->access$402(Lcom/miniclip/network/JavaSocket;Z)Z

    .line 98
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_nativeObject:J
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$500(Lcom/miniclip/network/JavaSocket;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miniclip/network/JavaSocket;->onConnect(J)V

    .line 99
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # invokes: Lcom/miniclip/network/JavaSocket;->sendQueuedData()V
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$600(Lcom/miniclip/network/JavaSocket;)V

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 102
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    iget-object v4, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;
    invoke-static {v4}, Lcom/miniclip/network/JavaSocket;->access$000(Lcom/miniclip/network/JavaSocket;)Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostPort:I
    invoke-static {v5}, Lcom/miniclip/network/JavaSocket;->access$700(Lcom/miniclip/network/JavaSocket;)I

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 103
    .local v2, "packet":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 104
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/miniclip/network/JavaSocket;->onDataPartial(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "buffer":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # setter for: Lcom/miniclip/network/JavaSocket;->_isConnected:Z
    invoke-static {v3, v7}, Lcom/miniclip/network/JavaSocket;->access$402(Lcom/miniclip/network/JavaSocket;Z)Z

    .line 112
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_nativeObject:J
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$500(Lcom/miniclip/network/JavaSocket;)J

    move-result-wide v4

    const-string v3, ""

    invoke-static {v4, v5, v7, v3}, Lcom/miniclip/network/JavaSocket;->onDisconnect(JILjava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v3}, Lcom/miniclip/network/JavaSocket;->access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 116
    :cond_0
    return-void

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # setter for: Lcom/miniclip/network/JavaSocket;->_isConnected:Z
    invoke-static {v4, v7}, Lcom/miniclip/network/JavaSocket;->access$402(Lcom/miniclip/network/JavaSocket;Z)Z

    .line 112
    iget-object v4, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_nativeObject:J
    invoke-static {v4}, Lcom/miniclip/network/JavaSocket;->access$500(Lcom/miniclip/network/JavaSocket;)J

    move-result-wide v4

    const-string v6, ""

    invoke-static {v4, v5, v7, v6}, Lcom/miniclip/network/JavaSocket;->onDisconnect(JILjava/lang/String;)V

    .line 113
    iget-object v4, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v4}, Lcom/miniclip/network/JavaSocket;->access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lcom/miniclip/network/JavaSocket$1;->this$0:Lcom/miniclip/network/JavaSocket;

    # getter for: Lcom/miniclip/network/JavaSocket;->_datagramSocket:Ljava/net/DatagramSocket;
    invoke-static {v4}, Lcom/miniclip/network/JavaSocket;->access$200(Lcom/miniclip/network/JavaSocket;)Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v3
.end method
