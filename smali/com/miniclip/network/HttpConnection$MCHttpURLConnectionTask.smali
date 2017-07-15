.class Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
.super Landroid/os/AsyncTask;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/network/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MCHttpURLConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private errorCode:I

.field private owner:Lcom/miniclip/network/HttpConnection;

.field final synthetic this$0:Lcom/miniclip/network/HttpConnection;


# direct methods
.method private constructor <init>(Lcom/miniclip/network/HttpConnection;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miniclip/network/HttpConnection;Lcom/miniclip/network/HttpConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miniclip/network/HttpConnection;
    .param p2, "x1"    # Lcom/miniclip/network/HttpConnection$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;-><init>(Lcom/miniclip/network/HttpConnection;)V

    return-void
.end method

.method static synthetic access$402(Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    .param p1, "x1"    # Lcom/miniclip/network/HttpConnection;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->owner:Lcom/miniclip/network/HttpConnection;

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 26
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    new-instance v20, Ljava/net/URL;

    const/16 v23, 0x0

    aget-object v23, p1, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .local v20, "url":Ljava/net/URL;
    const/16 v21, 0x0

    .line 126
    .local v21, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v17, 0x0

    .line 129
    .local v17, "postData":[B
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v21, v0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miniclip/network/HttpConnection;->timeout:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/miniclip/network/HttpConnection;->timeout:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "POST"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "PUT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    :cond_0
    const/4 v7, 0x1

    .line 137
    .local v7, "doOutput":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->urlBody:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "UTF-8"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 139
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 141
    .local v18, "postDataLength":I
    const-string v23, "Content-Type"

    const-string v24, "application/x-www-form-urlencoded"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v23, "Content-Length"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v18    # "postDataLength":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->headerProperties:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 146
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 208
    .end local v7    # "doOutput":Z
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 209
    .local v8, "e":Ljava/net/UnknownHostException;
    :try_start_2
    const-string v23, "HttpConnection"

    invoke-virtual {v8}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v23, -0x3eb

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    .line 211
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v23

    .line 218
    if-eqz v21, :cond_2

    .line 219
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v17    # "postData":[B
    .end local v20    # "url":Ljava/net/URL;
    .end local v21    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    :goto_2
    return-object v23

    .line 118
    :catch_1
    move-exception v8

    .line 119
    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 120
    const-string v23, "HttpConnection"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid URL: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, p1, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v23, -0x3e8

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    .line 122
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    goto :goto_2

    .line 135
    .end local v8    # "e":Ljava/net/MalformedURLException;
    .restart local v17    # "postData":[B
    .restart local v20    # "url":Ljava/net/URL;
    .restart local v21    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 149
    .restart local v7    # "doOutput":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 150
    const/16 v23, 0x1

    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 151
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 154
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 156
    const-string v23, "HttpConnection"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Server returned HTTP "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 157
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 156
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x12e

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x12d

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    move/from16 v23, v0

    const/16 v24, 0x12f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 161
    :cond_6
    const-string v23, "Location"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, "newUrl":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v23

    .line 218
    if-eqz v21, :cond_2

    .line 219
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 166
    .end local v15    # "newUrl":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 168
    .local v13, "headersFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v12, "headers":Ljava/util/HashMap;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_8
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 172
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 174
    .local v22, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_8

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_8

    .line 177
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 213
    .end local v7    # "doOutput":Z
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "headers":Ljava/util/HashMap;
    .end local v13    # "headersFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v22    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v8

    .line 214
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v23

    .line 218
    if-eqz v21, :cond_2

    .line 219
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 181
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "doOutput":Z
    .restart local v12    # "headers":Ljava/util/HashMap;
    .restart local v13    # "headersFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_9
    :try_start_6
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    .local v14, "in":Ljava/io/InputStream;
    :goto_4
    :try_start_7
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v16, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v23, 0x400

    move/from16 v0, v23

    new-array v3, v0, [B

    .line 190
    .local v3, "buffer":[B
    :goto_5
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .line 191
    .local v19, "r":I
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 194
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 195
    .local v5, "dataContents":[B
    array-length v4, v5

    .line 196
    .local v4, "contentLength":I
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "GET"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 199
    new-instance v6, Ljava/lang/String;

    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-direct {v6, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 200
    .local v6, "decoded":Ljava/lang/String;
    const-string v23, "HttpConnection"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "HttpConnection response from "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, p1, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v6    # "decoded":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/miniclip/network/HttpConnection;->jniCall:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    # invokes: Lcom/miniclip/network/HttpConnection;->downloadComplete(IILjava/util/HashMap;I[B)V
    invoke-static {v0, v1, v12, v4, v5}, Lcom/miniclip/network/HttpConnection;->access$000(IILjava/util/HashMap;I[B)V

    .line 204
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->listener:Lcom/miniclip/network/HttpConnectionListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->listener:Lcom/miniclip/network/HttpConnectionListener;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v1, v4, v5}, Lcom/miniclip/network/HttpConnectionListener;->downloadComplete(II[B)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 218
    :cond_c
    if-eqz v21, :cond_d

    .line 219
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    :cond_d
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    goto/16 :goto_2

    .line 183
    .end local v3    # "buffer":[B
    .end local v4    # "contentLength":I
    .end local v5    # "dataContents":[B
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "r":I
    :catch_3
    move-exception v11

    .line 184
    .local v11, "exception":Ljava/io/IOException;
    :try_start_8
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v14    # "in":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 192
    .end local v11    # "exception":Ljava/io/IOException;
    .restart local v3    # "buffer":[B
    .restart local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "r":I
    :cond_e
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 218
    .end local v3    # "buffer":[B
    .end local v7    # "doOutput":Z
    .end local v12    # "headers":Ljava/util/HashMap;
    .end local v13    # "headersFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "r":I
    :catchall_0
    move-exception v23

    if-eqz v21, :cond_f

    .line 219
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    throw v23
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCHttpURLConnectionTask failed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v2, v2, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v2, v2, Lcom/miniclip/network/HttpConnection;->urlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "HttpConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-boolean v1, v1, Lcom/miniclip/network/HttpConnection;->jniCall:Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v1, v1, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->errorCode:I

    # invokes: Lcom/miniclip/network/HttpConnection;->downloadFailed(ILjava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/miniclip/network/HttpConnection;->access$100(ILjava/lang/String;I)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v1, v1, Lcom/miniclip/network/HttpConnection;->listener:Lcom/miniclip/network/HttpConnectionListener;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v1, v1, Lcom/miniclip/network/HttpConnection;->listener:Lcom/miniclip/network/HttpConnectionListener;

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v2, v2, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/miniclip/network/HttpConnectionListener;->downloadFailed(ILjava/lang/String;)V

    .line 236
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    invoke-static {}, Lcom/miniclip/network/HttpConnectionsManager;->sharedInstance()Lcom/miniclip/network/HttpConnectionsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->owner:Lcom/miniclip/network/HttpConnection;

    iget-object v2, v2, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/miniclip/network/HttpConnectionsManager;->removeConnection(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
