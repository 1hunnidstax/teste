.class final Lcom/fyber/ads/videos/b$6;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/fyber/ads/videos/b$6;->a:Lcom/fyber/ads/videos/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/webkit/WebView;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 593
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fyber/ads/videos/b$6;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->k(Lcom/fyber/ads/videos/b;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 594
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 596
    invoke-static {v0}, Lcom/fyber/utils/aa;->b(Landroid/webkit/WebView;)V

    .line 597
    invoke-static {v1}, Lcom/fyber/utils/aa;->a(Landroid/webkit/WebSettings;)V

    .line 598
    invoke-static {v0}, Lcom/fyber/utils/aa;->a(Landroid/webkit/WebView;)V

    .line 1058
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/fyber/utils/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 601
    :cond_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 603
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 605
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/fyber/utils/n;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    const-string v2, "Mozilla/5.0 (X11; CrOS i686 4319.74.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36 (Sponsorpay SDK)"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 613
    :cond_1
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 615
    iget-object v1, p0, Lcom/fyber/ads/videos/b$6;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->l(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 617
    iget-object v1, p0, Lcom/fyber/ads/videos/b$6;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->m(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 619
    iget-object v1, p0, Lcom/fyber/ads/videos/b$6;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->n(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/mediation/c;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/b$6;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v2}, Lcom/fyber/ads/videos/b;->n(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/mediation/c;

    move-result-object v2

    .line 1096
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SynchJS"

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/fyber/ads/videos/b$6;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method
