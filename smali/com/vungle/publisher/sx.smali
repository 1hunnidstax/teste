.class public final Lcom/vungle/publisher/sx;
.super Lcom/vungle/publisher/mu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/sx$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/jc$b;

.field public b:Z

.field public c:Z

.field d:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/th;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/tl$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private j:Lcom/vungle/publisher/n;

.field private k:Z


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/vungle/publisher/mu;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/sx;->b:Z

    .line 50
    iput-boolean v1, p0, Lcom/vungle/publisher/sx;->k:Z

    .line 51
    iput-boolean v1, p0, Lcom/vungle/publisher/sx;->c:Z

    .line 71
    return-void
.end method

.method private static a(Ljava/util/Map;)Lcom/vungle/publisher/hn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/publisher/hn;"
        }
    .end annotation

    .prologue
    .line 271
    const-string v0, "event"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 272
    new-instance v1, Lcom/vungle/publisher/hn;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/hn;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Lcom/vungle/publisher/sx;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/n;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vungle/publisher/sx;->j:Lcom/vungle/publisher/n;

    return-object p1
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 166
    const/4 v0, 0x0

    .line 167
    sget-object v2, Lcom/vungle/publisher/tk;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigating to external location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ud;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/ud;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_0
    return v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 96
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mraid page finished loading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/vungle/publisher/sx;->b:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "VungleAd"

    const-string v1, "mraid webview finished loading"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/vungle/publisher/sx;->f:Lcom/vungle/publisher/th;

    iget-object v2, p0, Lcom/vungle/publisher/sx;->j:Lcom/vungle/publisher/n;

    iget-object v0, v1, Lcom/vungle/publisher/th;->d:Lcom/vungle/publisher/tp$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/tp$a;->a()Lcom/vungle/publisher/tp;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "sms"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "tel"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "calendar"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "storePicture"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "inlineVideo"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, v3, Lcom/vungle/publisher/tp;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lcom/vungle/publisher/tp;->a(Z)V

    invoke-virtual {v3}, Lcom/vungle/publisher/tp;->c()V

    invoke-interface {v2}, Lcom/vungle/publisher/n;->isIncentivized()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/vungle/publisher/tp;->m:Ljava/lang/Boolean;

    invoke-interface {v2}, Lcom/vungle/publisher/n;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/vungle/publisher/tp;->n:Ljava/lang/Boolean;

    sget-object v0, Lcom/vungle/publisher/tu;->b:Lcom/vungle/publisher/tu;

    iput-object v0, v3, Lcom/vungle/publisher/tp;->j:Lcom/vungle/publisher/tu;

    :try_start_1
    invoke-virtual {v3}, Lcom/vungle/publisher/tp;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/vungle/publisher/th;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/mu;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    return-void

    .line 99
    :catch_0
    move-exception v0

    const-string v5, "VungleProtocol"

    const-string v6, "exception setting mraid supports properties"

    invoke-static {v5, v6, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, v1, Lcom/vungle/publisher/th;->b:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "could not update mraid properties"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/publisher/sx;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, "VungleAd"

    const-string v1, "clear history"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-boolean v3, p0, Lcom/vungle/publisher/sx;->c:Z

    .line 106
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ui;

    sget-object v2, Lcom/vungle/publisher/te$b;->a:Lcom/vungle/publisher/te$b;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ui;-><init>(Lcom/vungle/publisher/te$b;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ug;

    sget-object v2, Lcom/vungle/publisher/to;->c:Lcom/vungle/publisher/to;

    invoke-direct {v1, v2, v7}, Lcom/vungle/publisher/ug;-><init>(Lcom/vungle/publisher/to;Z)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/mu;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 91
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mraid page started loading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/sx;->d:Lcom/vungle/publisher/gm$a;

    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received error in WebViewClient: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ub;

    const-string v2, "100"

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ub;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/mu;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 82
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    .line 83
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received ssl error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ub;

    const-string v2, "101"

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ub;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/mu;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 86
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 116
    const-string v0, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mraid attempted to navigate to url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v4, "mraid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-static {v2}, Lcom/vungle/publisher/ags;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    iget-object v2, p0, Lcom/vungle/publisher/sx;->d:Lcom/vungle/publisher/gm$a;

    const-string v3, "VungleAd"

    const-string v4, "exception while overriding mraid url"

    invoke-virtual {v2, v3, v4, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/uc;

    invoke-direct {v2}, Lcom/vungle/publisher/uc;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    move v0, v1

    .line 143
    :goto_2
    return v0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    iget-object v2, p0, Lcom/vungle/publisher/sx;->d:Lcom/vungle/publisher/gm$a;

    const-string v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/uc;

    invoke-direct {v2}, Lcom/vungle/publisher/uc;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 123
    goto :goto_2

    .line 135
    :cond_1
    :try_start_2
    invoke-static {v3}, Lcom/vungle/publisher/tl$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/tl;

    move-result-object v0

    .line 136
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "received MRAID event from js: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vungle/publisher/sx$2;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/tl;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown MRAID Javascript command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    :pswitch_0
    const-string v0, "notifyCommandComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/vungle/publisher/ss;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/ty;

    invoke-direct {v2}, Lcom/vungle/publisher/ty;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_2
    iget-boolean v0, p0, Lcom/vungle/publisher/sx;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/vungle/publisher/sx;->a:Lcom/vungle/publisher/jc$b;

    const-string v2, "VungleAd"

    const-string v3, "inject tokens into js and notify ready"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/jc$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tokens: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "notifyReadyEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v2, v3}, Lcom/vungle/publisher/ss;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/vungle/publisher/sx;->k:Z

    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/uf;

    invoke-direct {v2}, Lcom/vungle/publisher/uf;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :cond_3
    :try_start_5
    const-string v0, "notifyReadyEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/vungle/publisher/ss;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/vungle/publisher/sx;->d:Lcom/vungle/publisher/gm$a;

    const-string v3, "VungleAd"

    const-string v4, "failed to inject JSON tokens"

    invoke-virtual {v2, v3, v4, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :pswitch_3
    const-string v0, "sdkCloseButton"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/te$b;->valueOf(Ljava/lang/String;)Lcom/vungle/publisher/te$b;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v3, Lcom/vungle/publisher/ui;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/ui;-><init>(Lcom/vungle/publisher/te$b;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    const-string v0, "useCustomPrivacy"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ags;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v3, Lcom/vungle/publisher/uj;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/uj;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    const-string v0, "url"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/sx;->a(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "about:blank"

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vungle/publisher/sx;->b:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vungle/publisher/sx;->c:Z

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/ue;

    invoke-direct {v2}, Lcom/vungle/publisher/ue;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v2, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v3, Lcom/vungle/publisher/ak;

    const-string v0, "url"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/ak;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_7
    const-string v0, "allowOrientationChange"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ags;->b(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "forceOrientation"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ags;->d(Ljava/lang/String;)Lcom/vungle/publisher/to;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v4, Lcom/vungle/publisher/ug;

    invoke-direct {v4, v0, v2}, Lcom/vungle/publisher/ug;-><init>(Lcom/vungle/publisher/to;Z)V

    invoke-virtual {v3, v4}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/tv;

    invoke-static {v4}, Lcom/vungle/publisher/sx;->a(Ljava/util/Map;)Lcom/vungle/publisher/hn;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/publisher/tv;-><init>(Lcom/vungle/publisher/hn;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_9
    const-string v0, "value"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v3, Lcom/vungle/publisher/tx;

    invoke-static {v4}, Lcom/vungle/publisher/sx;->a(Ljava/util/Map;)Lcom/vungle/publisher/hn;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/vungle/publisher/tx;-><init>(Lcom/vungle/publisher/ji;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_a
    const-string v0, "code"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v3, Lcom/vungle/publisher/ub;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/ub;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_b
    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/as;

    invoke-direct {v2}, Lcom/vungle/publisher/as;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :pswitch_c
    :try_start_7
    const-string v0, "selector"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/publisher/sx;->h:Lcom/vungle/publisher/bw;

    new-instance v3, Lcom/vungle/publisher/sx$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/vungle/publisher/sx$1;-><init>(Lcom/vungle/publisher/sx;Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/vungle/publisher/bw;->a:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    iget-object v3, p0, Lcom/vungle/publisher/sx;->d:Lcom/vungle/publisher/gm$a;

    const-string v5, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "invalid mraid video selector: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "selector"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0, v2}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vungle/publisher/sx;->e:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/uc;

    invoke-direct {v2}, Lcom/vungle/publisher/uc;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_3

    .line 143
    :cond_4
    invoke-direct {p0, v2}, Lcom/vungle/publisher/sx;->a(Landroid/net/Uri;)Z

    move-result v0

    goto/16 :goto_2

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method
