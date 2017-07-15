.class Lcom/unity3d/ads/cache/CacheThreadHandler;
.super Landroid/os/Handler;
.source "CacheThreadHandler.java"


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/ads/request/WebRequest;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 31
    iput-boolean v1, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_canceled:Z

    .line 32
    iput-boolean v1, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;JIII)V
    .locals 23
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "position"    # J
    .param p5, "connectTimeout"    # I
    .param p6, "readTimeout"    # I
    .param p7, "progressInterval"    # I

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_canceled:Z

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_2

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads cache: resuming download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 79
    :goto_1
    invoke-static {}, Lcom/unity3d/ads/device/Device;->isActiveNetworkConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 80
    const-string v4, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->NO_INTERNET:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads cache: start downloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 85
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 88
    .local v20, "startTime":J
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v22, "targetFile":Ljava/io/File;
    const/16 v18, 0x0

    .line 92
    .local v18, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v19, Ljava/io/FileOutputStream;

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v18    # "fileOutput":Ljava/io/FileOutputStream;
    .local v19, "fileOutput":Ljava/io/FileOutputStream;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 93
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/unity3d/ads/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;JII)Lcom/unity3d/ads/request/WebRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    new-instance v5, Lcom/unity3d/ads/cache/CacheThreadHandler$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/unity3d/ads/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/ads/cache/CacheThreadHandler;JI)V

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/request/WebRequest;->setProgressListener(Lcom/unity3d/ads/request/IWebRequestProgressListener;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/unity3d/ads/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    move-result-wide v10

    .line 114
    .local v10, "total":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads/request/WebRequest;->getContentLength()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads/request/WebRequest;->isCanceled()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads/request/WebRequest;->getResponseCode()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v4}, Lcom/unity3d/ads/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v5, p0

    move-wide/from16 v6, v20

    move-object/from16 v8, p1

    move-object/from16 v9, v22

    invoke-direct/range {v5 .. v16}, Lcom/unity3d/ads/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 135
    if-eqz v19, :cond_4

    .line 136
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object/from16 v18, v19

    .line 141
    .end local v19    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v18    # "fileOutput":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 92
    .end local v10    # "total":J
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 138
    .end local v18    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v10    # "total":J
    .restart local v19    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v17

    .line 139
    .local v17, "e":Ljava/lang/Exception;
    const-string v4, "Error closing stream"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-object/from16 v18, v19

    .line 142
    .end local v19    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v18    # "fileOutput":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 117
    .end local v10    # "total":J
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 118
    .local v17, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v4, "Couldn\'t create target file"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 119
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    .line 120
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 135
    if-eqz v18, :cond_0

    .line 136
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 138
    :catch_2
    move-exception v17

    .line 139
    .local v17, "e":Ljava/lang/Exception;
    const-string v4, "Error closing stream"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v17

    .line 123
    .local v17, "e":Ljava/net/MalformedURLException;
    :goto_4
    :try_start_5
    const-string v4, "Malformed URL"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    .line 125
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 135
    if-eqz v18, :cond_0

    .line 136
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 138
    :catch_4
    move-exception v17

    .line 139
    .local v17, "e":Ljava/lang/Exception;
    const-string v4, "Error closing stream"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 127
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v17

    .line 128
    .local v17, "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v4, "Couldn\'t request stream"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    .line 130
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 133
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 135
    if-eqz v18, :cond_0

    .line 136
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 138
    :catch_6
    move-exception v17

    .line 139
    .local v17, "e":Ljava/lang/Exception;
    const-string v4, "Error closing stream"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v4

    sget-object v5, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v6, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 133
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    .line 135
    if-eqz v18, :cond_6

    .line 136
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 141
    :cond_6
    :goto_7
    throw v4

    .line 138
    :catch_7
    move-exception v17

    .line 139
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v5, "Error closing stream"

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v12, Lcom/unity3d/ads/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/cache/CacheError;

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 133
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v19    # "fileOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object/from16 v18, v19

    .end local v19    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v18    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 127
    .end local v18    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v19    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v17

    move-object/from16 v18, v19

    .end local v19    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v18    # "fileOutput":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 122
    .end local v18    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v19    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v17

    move-object/from16 v18, v19

    .end local v19    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v18    # "fileOutput":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 117
    .end local v18    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v19    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v17

    move-object/from16 v18, v19

    .end local v19    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v18    # "fileOutput":Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method private getWebRequest(Ljava/lang/String;JII)Lcom/unity3d/ads/request/WebRequest;
    .locals 8
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "position"    # J
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 166
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .local v6, "list":Ljava/util/ArrayList;
    const-string v0, "Range"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v6    # "list":Ljava/util/ArrayList;
    :cond_0
    new-instance v0, Lcom/unity3d/ads/request/WebRequest;

    const-string v2, "GET"

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    return-object v0
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "targetFile"    # Ljava/io/File;
    .param p5, "byteCount"    # J
    .param p7, "totalBytes"    # J
    .param p9, "canceled"    # Z
    .param p10, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p11, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, p1

    .line 149
    .local v0, "duration":J
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    .line 150
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 151
    const-string v3, "Unity Ads cache: could not set file readable!"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 154
    :cond_0
    if-nez p9, :cond_1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes downloaded in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static/range {p11 .. p11}, Lcom/unity3d/ads/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads cache: downloading of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stopped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/ads/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/ads/cache/CacheEvent;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static/range {p11 .. p11}, Lcom/unity3d/ads/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "source":Ljava/lang/String;
    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "target":Ljava/lang/String;
    const-string v1, "connectTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 40
    .local v6, "connectTimeout":I
    const-string v1, "readTimeout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 41
    .local v7, "readTimeout":I
    const-string v1, "progressInterval"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 43
    .local v8, "progressInterval":I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 45
    :pswitch_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/unity3d/ads/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;JIII)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    return v0
.end method

.method public setCancelStatus(Z)V
    .locals 1
    .param p1, "canceled"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_canceled:Z

    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_active:Z

    .line 59
    iget-object v0, p0, Lcom/unity3d/ads/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/ads/request/WebRequest;

    invoke-virtual {v0}, Lcom/unity3d/ads/request/WebRequest;->cancel()V

    .line 61
    :cond_0
    return-void
.end method
