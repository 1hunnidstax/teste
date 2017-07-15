.class Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;
.super Landroid/os/AsyncTask;
.source "AppLinksNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/applinks/AppLinksNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppLinkBackgroundNavigator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANDROID_TAG:Ljava/lang/String; = "android"

.field private static final APPNAME_TAG:Ljava/lang/String; = "app_name"

.field private static final CLASS_TAG:Ljava/lang/String; = "class"

.field private static final FALLBACK_TAG:Ljava/lang/String; = "should_fallback"

.field private static final META_TAG_PREFIX:Ljava/lang/String; = "al"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final PREFER_HEADER:Ljava/lang/String; = "Prefer-Html-Meta-Tags"

.field private static final URL_TAG:Ljava/lang/String; = "url"

.field private static final WEB_TAG:Ljava/lang/String; = "web"


# instance fields
.field appLinksEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field contentType:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field htmlContent:Ljava/lang/String;

.field originalURL:Ljava/lang/String;

.field refererAppName:Ljava/lang/String;

.field refererURL:Ljava/lang/String;

.field resolvedIntent:Landroid/content/Intent;

.field resolvedURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/miniclip/applinks/AppLinksNavigation;


# direct methods
.method constructor <init>(Lcom/miniclip/applinks/AppLinksNavigation;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miniclip/applinks/AppLinksNavigation;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->this$0:Lcom/miniclip/applinks/AppLinksNavigation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    return-void
.end method

.method private readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 13
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 134
    instance-of v11, p1, Ljava/net/HttpURLConnection;

    if-eqz v11, :cond_0

    move-object v3, p1

    .line 135
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 137
    .local v3, "httpConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 145
    .end local v3    # "httpConnection":Ljava/net/HttpURLConnection;
    .local v9, "stream":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v5, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 147
    .local v0, "buffer":[B
    const/4 v8, 0x0

    .line 148
    .local v8, "read":I
    :goto_1
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_1

    .line 149
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 168
    .end local v0    # "buffer":[B
    .end local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    :catchall_0
    move-exception v10

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v10

    .line 138
    .end local v9    # "stream":Ljava/io/InputStream;
    .restart local v3    # "httpConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 142
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v9    # "stream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .restart local v9    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 151
    .restart local v0    # "buffer":[B
    .restart local v5    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read":I
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 153
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "mimeType":Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "parts":[Ljava/lang/String;
    array-length v11, v7

    :goto_2
    if-ge v10, v11, :cond_2

    aget-object v6, v7, v10

    .line 156
    .local v6, "part":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 157
    const-string v12, "charset="

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 158
    const-string v10, "charset="

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .end local v6    # "part":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 163
    const-string v1, "UTF-8"

    .line 166
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 166
    return-object v10

    .line 155
    .restart local v4    # "mimeType":Ljava/lang/String;
    .restart local v6    # "part":Ljava/lang/String;
    .restart local v7    # "parts":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method


# virtual methods
.method createWebIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->getWebURL()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 278
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLink tags defined for the requested URL state that should not fallback to web -- will not open Web Intent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    .line 282
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    iput-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolvedIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 322
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to resolve AppLink URL in the background ....... "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 324
    .local v1, "url":Ljava/lang/String;
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->originalURL:Ljava/lang/String;

    .line 329
    invoke-virtual {p0, v1}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->getHTMLContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "htmlContent":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->getMetadataFromHTML(Ljava/lang/String;)Ljava/util/HashMap;

    .line 332
    invoke-virtual {p0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolveURL()Landroid/content/Intent;

    .line 335
    iget-object v2, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolvedURL:Ljava/lang/String;

    return-object v2
.end method

.method getHTMLContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "currentURL":Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "currentURL":Ljava/net/URL;
    .local v3, "currentURL":Ljava/net/URL;
    move-object v2, v3

    .line 182
    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    :goto_0
    const/4 v1, 0x0

    .local v1, "connection":Ljava/net/URLConnection;
    move-object v3, v2

    .line 184
    .end local v2    # "currentURL":Ljava/net/URL;
    .restart local v3    # "currentURL":Ljava/net/URL;
    :goto_1
    if-eqz v3, :cond_3

    .line 186
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 188
    instance-of v6, v1, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_0

    .line 191
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 193
    :cond_0
    const-string v6, "Prefer-Html-Meta-Tags"

    const-string v7, "al"

    invoke-virtual {v1, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 196
    instance-of v6, v1, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_2

    .line 197
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 198
    .local v5, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x190

    if-ge v6, v7, :cond_1

    .line 199
    new-instance v2, Ljava/net/URL;

    const-string v6, "Location"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    move-object v3, v2

    .line 204
    .end local v2    # "currentURL":Ljava/net/URL;
    .restart local v3    # "currentURL":Ljava/net/URL;
    goto :goto_1

    .line 177
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v3    # "currentURL":Ljava/net/URL;
    .end local v5    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v2    # "currentURL":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 178
    .local v4, "e":Ljava/net/MalformedURLException;
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to resolve URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v2    # "currentURL":Ljava/net/URL;
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "currentURL":Ljava/net/URL;
    .restart local v5    # "httpConnection":Ljava/net/HttpURLConnection;
    :cond_1
    const/4 v2, 0x0

    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    goto :goto_2

    .line 205
    .end local v2    # "currentURL":Ljava/net/URL;
    .end local v5    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "currentURL":Ljava/net/URL;
    :cond_2
    const/4 v2, 0x0

    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    move-object v3, v2

    .end local v2    # "currentURL":Ljava/net/URL;
    .restart local v3    # "currentURL":Ljava/net/URL;
    goto :goto_1

    .line 209
    :cond_3
    :try_start_3
    invoke-direct {p0, v1}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->htmlContent:Ljava/lang/String;

    .line 210
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->contentType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    instance-of v6, v1, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_6

    move-object v6, v1

    .line 217
    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v3

    .line 221
    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->htmlContent:Ljava/lang/String;

    return-object v6

    .line 212
    .end local v2    # "currentURL":Ljava/net/URL;
    .restart local v3    # "currentURL":Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v2, v3

    .line 213
    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    instance-of v6, v1, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_4

    move-object v6, v1

    .line 217
    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 216
    .end local v2    # "currentURL":Ljava/net/URL;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "currentURL":Ljava/net/URL;
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    :goto_5
    instance-of v7, v1, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_5

    .line 217
    check-cast v1, Ljava/net/HttpURLConnection;

    .end local v1    # "connection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v6

    .line 216
    .restart local v1    # "connection":Ljava/net/URLConnection;
    :catchall_1
    move-exception v6

    goto :goto_5

    .line 212
    .restart local v5    # "httpConnection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v4

    goto :goto_4

    .end local v2    # "currentURL":Ljava/net/URL;
    .end local v5    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "currentURL":Ljava/net/URL;
    :cond_6
    move-object v2, v3

    .end local v3    # "currentURL":Ljava/net/URL;
    .restart local v2    # "currentURL":Ljava/net/URL;
    goto :goto_3
.end method

.method getMetadataFromHTML(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .param p1, "htmlContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to get AppLinks HTML content"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v8, 0x0

    .line 257
    :goto_0
    return-object v8

    .line 231
    :cond_0
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 233
    .local v0, "completeHTML":Lorg/jsoup/nodes/Document;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v8

    const-string v9, "meta"

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 235
    .local v2, "metaTags":Lorg/jsoup/select/Elements;
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 236
    .local v7, "tag":Lorg/jsoup/nodes/Element;
    const-string v9, "property"

    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "property":Ljava/lang/String;
    const-string v9, "content"

    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "content":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "nameComponents":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v3, v9

    const-string v10, "al"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    array-length v9, v3

    const/4 v10, 0x3

    if-lt v9, v10, :cond_1

    .line 243
    const/4 v9, 0x1

    aget-object v5, v3, v9

    .line 244
    .local v5, "platformType":Ljava/lang/String;
    const-string v9, "ios"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 248
    iget-object v9, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 249
    iget-object v9, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 255
    .local v4, "platformData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v4, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    .end local v4    # "platformData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 253
    .restart local v4    # "platformData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 257
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "nameComponents":[Ljava/lang/String;
    .end local v4    # "platformData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "platformType":Ljava/lang/String;
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "tag":Lorg/jsoup/nodes/Element;
    :cond_3
    iget-object v8, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    goto :goto_0
.end method

.method getWebURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    const-string v2, "web"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->originalURL:Ljava/lang/String;

    .line 272
    :goto_0
    return-object v1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    const-string v2, "web"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 266
    .local v0, "webData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "should_fallback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "should_fallback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const/4 v1, 0x0

    goto :goto_0

    .line 269
    :cond_1
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->originalURL:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolvedIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 344
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to resolve AppLink and create the navigation intent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->originalURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->extras:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->refererURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->refererAppName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/miniclip/applinks/AppLinksNavigation;->createAppLinkData(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, "appLinkData":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolvedIntent:Landroid/content/Intent;

    const-string v2, "al_applink_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->this$0:Lcom/miniclip/applinks/AppLinksNavigation;

    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/miniclip/applinks/AppLinksNavigation;->access$100(Lcom/miniclip/applinks/AppLinksNavigation;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolvedIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method resolveURL()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 289
    iget-object v4, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->createWebIntent()Landroid/content/Intent;

    move-result-object v2

    .line 316
    :goto_0
    return-object v2

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->appLinksEntries:Ljava/util/HashMap;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 294
    .local v0, "androidData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "package"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->createWebIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 297
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 301
    .local v3, "intentData":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 302
    const-string v4, "package"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v4, "class"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 304
    const-string v4, "package"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "class"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->this$0:Lcom/miniclip/applinks/AppLinksNavigation;

    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/miniclip/applinks/AppLinksNavigation;->access$100(Lcom/miniclip/applinks/AppLinksNavigation;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 310
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_4

    .line 311
    # getter for: Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/applinks/AppLinksNavigation;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Activity found to handle Intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".\nCreating Web Intent instead."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->createWebIntent()Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 299
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "intentData":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->originalURL:Ljava/lang/String;

    goto :goto_1

    .line 315
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "intentData":Ljava/lang/String;
    :cond_4
    iput-object v2, p0, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->resolvedIntent:Landroid/content/Intent;

    goto/16 :goto_0
.end method
