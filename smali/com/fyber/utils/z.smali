.class public abstract Lcom/fyber/utils/z;
.super Landroid/webkit/WebViewClient;
.source "WebClient.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/utils/z;->a:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fyber/utils/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected abstract a(ILjava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/fyber/utils/z;->a()Landroid/app/Activity;

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    if-eqz p1, :cond_0

    .line 119
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 120
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/fyber/utils/z;->b()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/fyber/utils/z;->a()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://search?q=pname:com.google"

    .line 130
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    invoke-static {v1, v2, v3}, Lcom/fyber/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const-string v1, "WebClient"

    const-string v2, "Play Store is not installed on this device..."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/fyber/utils/z;->c()V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 151
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 152
    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 154
    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/fyber/utils/z;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v0, Lcom/fyber/utils/z$1;

    invoke-direct {v0, p0}, Lcom/fyber/utils/z$1;-><init>(Lcom/fyber/utils/z;)V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/fyber/utils/z;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 171
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "WebClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t show error dialog. Not displayed error message is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/utils/z;->b(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 76
    const-string v0, "WebClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading called with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "sponsorpay://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/fyber/utils/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1060
    :cond_0
    const-string v0, "status"

    invoke-static {p2, v0}, Lcom/fyber/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_2

    .line 1063
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2052
    :goto_0
    const-string v1, "url"

    invoke-static {p2, v1}, Lcom/fyber/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "WebClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overriding. Target Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    const-string v2, "tracking_url"

    invoke-static {p2, v2}, Lcom/fyber/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string v3, "WebClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overriding. Tracking Url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v2}, Lcom/fyber/b/i;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 98
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/z;->a(ILjava/lang/String;)V

    .line 103
    :goto_1
    const/4 v0, 0x1

    .line 106
    :goto_2
    return v0

    .line 1065
    :cond_2
    const/16 v0, -0xa

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/fyber/utils/z;->a(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 105
    :cond_4
    const-string v0, "WebClient"

    const-string v1, "Not overriding"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_2
.end method
