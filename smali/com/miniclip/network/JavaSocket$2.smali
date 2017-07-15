.class Lcom/miniclip/network/JavaSocket$2;
.super Ljava/lang/Object;
.source "JavaSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/network/JavaSocket;->connectTCP()Z
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
    .line 123
    iput-object p1, p0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 126
    const/4 v15, 0x0

    .line 127
    .local v15, "socket":Ljava/net/Socket;
    const/4 v10, 0x0

    .line 128
    .local v10, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 131
    .local v11, "out":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$100(Lcom/miniclip/network/JavaSocket;)Ljava/lang/String;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v21, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/miniclip/network/JavaSocket;->access$100(Lcom/miniclip/network/JavaSocket;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    # setter for: Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;
    invoke-static/range {v20 .. v21}, Lcom/miniclip/network/JavaSocket;->access$002(Lcom/miniclip/network/JavaSocket;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 137
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$100(Lcom/miniclip/network/JavaSocket;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v9

    .line 138
    .local v9, "hosts":[Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$800(Lcom/miniclip/network/JavaSocket;)Lcom/miniclip/network/JavaSocket$SocketType;

    move-result-object v20

    sget-object v21, Lcom/miniclip/network/JavaSocket$SocketType;->TCPSSL:Lcom/miniclip/network/JavaSocket$SocketType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 139
    const-string v20, "TLS"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v17

    .line 140
    .local v17, "sslContext":Ljavax/net/ssl/SSLContext;
    # getter for: Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/miniclip/network/JavaSocket;->access$900()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_4

    # getter for: Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/miniclip/network/JavaSocket;->access$900()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 141
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/miniclip/network/JavaTrustManager;

    # getter for: Lcom/miniclip/network/JavaSocket;->_certs:Ljava/util/ArrayList;
    invoke-static {}, Lcom/miniclip/network/JavaSocket;->access$900()Ljava/util/ArrayList;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/miniclip/network/JavaTrustManager;-><init>(Ljava/util/ArrayList;)V

    aput-object v21, v19, v20

    .line 142
    .local v19, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 147
    .end local v19    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v13

    .line 148
    .local v13, "sf":Ljavax/net/SocketFactory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$000(Lcom/miniclip/network/JavaSocket;)Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v21, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostPort:I
    invoke-static/range {v21 .. v21}, Lcom/miniclip/network/JavaSocket;->access$700(Lcom/miniclip/network/JavaSocket;)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v18

    check-cast v18, Ljavax/net/ssl/SSLSocket;

    .line 149
    .local v18, "sslSocket":Ljavax/net/ssl/SSLSocket;
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 150
    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 151
    move-object/from16 v15, v18

    .line 156
    .end local v13    # "sf":Ljavax/net/SocketFactory;
    .end local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v18    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    :goto_2
    invoke-virtual {v15}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 157
    invoke-virtual {v15}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 166
    .end local v9    # "hosts":[Ljava/net/InetAddress;
    :goto_3
    if-eqz v15, :cond_2

    .line 167
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v6, "din":Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    new-instance v21, Ljava/io/DataOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    # setter for: Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;
    invoke-static/range {v20 .. v21}, Lcom/miniclip/network/JavaSocket;->access$1002(Lcom/miniclip/network/JavaSocket;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/miniclip/network/JavaSocket;->_isConnected:Z
    invoke-static/range {v20 .. v21}, Lcom/miniclip/network/JavaSocket;->access$402(Lcom/miniclip/network/JavaSocket;Z)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_nativeObject:J
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$500(Lcom/miniclip/network/JavaSocket;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/miniclip/network/JavaSocket;->onConnect(J)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # invokes: Lcom/miniclip/network/JavaSocket;->sendQueuedData()V
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$600(Lcom/miniclip/network/JavaSocket;)V

    .line 173
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_workBufferSize:I
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$300(Lcom/miniclip/network/JavaSocket;)I

    move-result v20

    move/from16 v0, v20

    new-array v8, v0, [B

    .line 175
    .local v8, "fixedBuffer":[B
    :cond_1
    move-object v4, v8

    .line 176
    .local v4, "buffer":[B
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v14

    .line 177
    .local v14, "size":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_6

    .line 207
    .end local v4    # "buffer":[B
    .end local v8    # "fixedBuffer":[B
    .end local v14    # "size":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/miniclip/network/JavaSocket;->_isConnected:Z
    invoke-static/range {v20 .. v21}, Lcom/miniclip/network/JavaSocket;->access$402(Lcom/miniclip/network/JavaSocket;Z)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_nativeObject:J
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$500(Lcom/miniclip/network/JavaSocket;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v20 .. v23}, Lcom/miniclip/network/JavaSocket;->onDisconnect(JILjava/lang/String;)V

    .line 210
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_dout:Ljava/io/DataOutputStream;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$1000(Lcom/miniclip/network/JavaSocket;)Ljava/io/DataOutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 216
    .end local v6    # "din":Ljava/io/DataInputStream;
    :cond_2
    :goto_5
    return-void

    .line 135
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v21, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostAddress:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/miniclip/network/JavaSocket;->access$100(Lcom/miniclip/network/JavaSocket;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    # setter for: Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;
    invoke-static/range {v20 .. v21}, Lcom/miniclip/network/JavaSocket;->access$002(Lcom/miniclip/network/JavaSocket;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v7}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_3

    .line 145
    .end local v7    # "e":Ljava/net/UnknownHostException;
    .restart local v9    # "hosts":[Ljava/net/InetAddress;
    .restart local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_4
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_4
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 160
    .end local v9    # "hosts":[Ljava/net/InetAddress;
    .end local v17    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v7

    .line 161
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 153
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "hosts":[Ljava/net/InetAddress;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_socketType:Lcom/miniclip/network/JavaSocket$SocketType;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$800(Lcom/miniclip/network/JavaSocket;)Lcom/miniclip/network/JavaSocket$SocketType;

    move-result-object v20

    sget-object v21, Lcom/miniclip/network/JavaSocket$SocketType;->TCP:Lcom/miniclip/network/JavaSocket$SocketType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 154
    new-instance v16, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_host:Ljava/net/InetAddress;
    invoke-static/range {v20 .. v20}, Lcom/miniclip/network/JavaSocket;->access$000(Lcom/miniclip/network/JavaSocket;)Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v21, v0

    # getter for: Lcom/miniclip/network/JavaSocket;->_hostPort:I
    invoke-static/range {v21 .. v21}, Lcom/miniclip/network/JavaSocket;->access$700(Lcom/miniclip/network/JavaSocket;)I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v15    # "socket":Ljava/net/Socket;
    .local v16, "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "socket":Ljava/net/Socket;
    .restart local v15    # "socket":Ljava/net/Socket;
    goto/16 :goto_2

    .line 162
    .end local v9    # "hosts":[Ljava/net/InetAddress;
    :catch_2
    move-exception v7

    .line 163
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 180
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "buffer":[B
    .restart local v6    # "din":Ljava/io/DataInputStream;
    .restart local v8    # "fixedBuffer":[B
    .restart local v14    # "size":I
    :cond_6
    const/4 v12, 0x0

    .line 181
    .local v12, "readError":Z
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v20

    if-lez v20, :cond_a

    .line 182
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v5, "bufferFull":Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 184
    :cond_7
    :goto_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v20

    if-lez v20, :cond_9

    .line 185
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v14

    .line 186
    if-lez v14, :cond_8

    .line 187
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v4, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 204
    .end local v4    # "buffer":[B
    .end local v5    # "bufferFull":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "fixedBuffer":[B
    .end local v12    # "readError":Z
    .end local v14    # "size":I
    :catch_3
    move-exception v7

    .line 205
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 189
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bufferFull":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "fixedBuffer":[B
    .restart local v12    # "readError":Z
    .restart local v14    # "size":I
    :cond_8
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_7

    .line 190
    const/4 v12, 0x1

    .line 194
    :cond_9
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 195
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    .line 197
    .end local v5    # "bufferFull":Ljava/io/ByteArrayOutputStream;
    :cond_a
    if-lez v14, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/JavaSocket$2;->this$0:Lcom/miniclip/network/JavaSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v4}, Lcom/miniclip/network/JavaSocket;->onDataPartial(I[B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 200
    :cond_b
    if-eqz v12, :cond_1

    goto/16 :goto_4

    .line 212
    .end local v4    # "buffer":[B
    .end local v8    # "fixedBuffer":[B
    .end local v12    # "readError":Z
    .end local v14    # "size":I
    :catch_4
    move-exception v7

    .line 213
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5
.end method
