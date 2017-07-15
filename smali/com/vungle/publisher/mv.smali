.class public abstract Lcom/vungle/publisher/mv;
.super Lcom/vungle/publisher/ms;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/mv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Lcom/vungle/publisher/mt;",
        ">",
        "Lcom/vungle/publisher/ms;"
    }
.end annotation


# instance fields
.field protected e:Lcom/vungle/publisher/lk;

.field protected f:Lcom/vungle/publisher/mt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/String;

.field protected h:Lcom/vungle/publisher/n;

.field i:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/lk$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/ms;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/n;",
            ")TW;"
        }
    .end annotation
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 60
    .local p0, "this":Lcom/vungle/publisher/mv;, "Lcom/vungle/publisher/mv<TW;>;"
    invoke-super {p0, p1}, Lcom/vungle/publisher/ms;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/mv;->f:Lcom/vungle/publisher/mt;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/mt;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    .local p0, "this":Lcom/vungle/publisher/mv;, "Lcom/vungle/publisher/mv<TW;>;"
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/ms;->onCreate(Landroid/os/Bundle;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/vungle/publisher/mv;->k:Lcom/vungle/publisher/lk$b;

    const-string v1, "webViewRootContentIndexFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/vungle/publisher/lk$b;->a:Lcom/vungle/publisher/lg$a;

    const-string v1, "webViewRootContentIndexFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/lg$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/lg;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/mv;->e:Lcom/vungle/publisher/lk;

    .line 50
    const-string v0, "adId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/mv;->g:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 49
    :cond_1
    const-string v1, "webViewRootContentString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/vungle/publisher/lk$b;->b:Lcom/vungle/publisher/ln$a;

    const-string v1, "webViewRootContentString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ln$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/ln;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "VungleAd"

    const-string v2, "exception in onCreate"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .local p0, "this":Lcom/vungle/publisher/mv;, "Lcom/vungle/publisher/mv<TW;>;"
    const/4 v6, 0x0

    .line 66
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/mv;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/mv;->h:Lcom/vungle/publisher/n;

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/mv;->a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/mv;->f:Lcom/vungle/publisher/mt;

    .line 69
    iget-object v2, p0, Lcom/vungle/publisher/mv;->e:Lcom/vungle/publisher/lk;

    invoke-virtual {v2}, Lcom/vungle/publisher/lk;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loading webview with url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/lk;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/lk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mt;->loadUrl(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vungle/publisher/mv;->i:Lcom/vungle/publisher/pn;

    invoke-interface {v1, v0}, Lcom/vungle/publisher/pn;->a(Landroid/webkit/WebView;)V

    .line 72
    new-instance v1, Lcom/vungle/publisher/agw$1;

    invoke-direct {v1}, Lcom/vungle/publisher/agw$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/vungle/publisher/mv;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v0}, Lcom/vungle/publisher/mt;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 76
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 82
    :goto_1
    return-object v0

    .line 69
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/vungle/publisher/lk;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loading webview with content: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/lk;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "http://lol.vungle.com/"

    invoke-virtual {v2}, Lcom/vungle/publisher/lk;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/mt;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 80
    :goto_2
    const-string v2, "VungleAd"

    const-string v3, "exception in onCreateView"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "VungleAd"

    const-string v1, "webview fragment onDestroy()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0}, Lcom/vungle/publisher/ms;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/mv;->f:Lcom/vungle/publisher/mt;

    invoke-virtual {v0}, Lcom/vungle/publisher/mt;->destroy()V

    .line 92
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    .local p0, "this":Lcom/vungle/publisher/mv;, "Lcom/vungle/publisher/mv<TW;>;"
    invoke-super {p0, p1}, Lcom/vungle/publisher/ms;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/mv;->e:Lcom/vungle/publisher/lk;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/lk;->a(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "adId"

    iget-object v1, p0, Lcom/vungle/publisher/mv;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
