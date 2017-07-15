.class public final Lcom/fyber/ads/interstitials/a/b;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "ExchangeInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fyber/c/d/d$d;
.implements Lcom/fyber/mediation/MediationUserActivityListener;
.implements Lcom/fyber/requesters/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/a/a;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/fyber/c/d/d$d;",
        "Lcom/fyber/mediation/MediationUserActivityListener;",
        "Lcom/fyber/requesters/RequestCallback;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/os/Handler;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/webkit/WebViewClient;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/fyber/c/d/d$a;

.field private i:Lcom/fyber/c/d/d;

.field private j:Lcom/fyber/ads/interstitials/a/d;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/a/a;)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/interstitials/a/b$1;

    invoke-direct {v2, p0}, Lcom/fyber/ads/interstitials/a/b$1;-><init>(Lcom/fyber/ads/interstitials/a/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->c:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/a/b;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/a/b;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fyber/ads/interstitials/a/b;->d:Landroid/webkit/WebView;

    return-object p1
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 260
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 262
    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->d()V

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->getCreativeType()Lcom/fyber/ads/interstitials/a/a;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/interstitials/a/a;->b:Lcom/fyber/ads/interstitials/a/a;

    if-ne v0, v1, :cond_1

    .line 2480
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->getContextData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "orientation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2481
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->getContextData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "rotation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2483
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2484
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/utils/h;->e()Z

    move-result v2

    .line 2486
    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2488
    if-eqz v2, :cond_3

    .line 2490
    if-ne v1, v4, :cond_2

    .line 2491
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    .line 2522
    :cond_1
    :goto_0
    return-void

    .line 2493
    :cond_2
    invoke-direct {p0, v4}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0

    .line 2500
    :cond_3
    if-ne v1, v7, :cond_4

    .line 2501
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0

    .line 2503
    :cond_4
    invoke-direct {p0, v4}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0

    .line 2507
    :cond_5
    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2509
    if-eqz v2, :cond_7

    .line 2511
    if-ne v1, v7, :cond_6

    .line 2512
    invoke-direct {p0, v5}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0

    .line 2514
    :cond_6
    invoke-direct {p0, v6}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0

    .line 2521
    :cond_7
    const/4 v0, 0x3

    if-ne v1, v0, :cond_8

    .line 2522
    invoke-direct {p0, v5}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0

    .line 2524
    :cond_8
    invoke-direct {p0, v6}, Lcom/fyber/ads/interstitials/a/b;->a(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 537
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/a/b;Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 53
    .line 8368
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    .line 8369
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    const-string v1, "interstitialStaticLayout"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8370
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 8374
    new-instance v0, Lcom/fyber/c/b/a;

    invoke-direct {v0, p1}, Lcom/fyber/c/b/a;-><init>(Landroid/content/Context;)V

    .line 8375
    invoke-virtual {v0}, Lcom/fyber/c/b/a;->a()I

    move-result v1

    .line 8376
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/fyber/c/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8380
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8382
    const-string v1, "interstitialWebView"

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8385
    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8387
    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8390
    invoke-virtual {v0, p0}, Lcom/fyber/c/b/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8391
    const-string v1, "interstitialCloseButton"

    invoke-virtual {v0, v1}, Lcom/fyber/c/b/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/a/b;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 9432
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9434
    const-string v1, "ExchangeInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Placement ID - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9436
    invoke-static {p0}, Lcom/fyber/requesters/OfferWallRequester;->create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/OfferWallRequester;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fyber/requesters/OfferWallRequester;->closeOnRedirect(Z)Lcom/fyber/requesters/OfferWallRequester;

    move-result-object v1

    .line 9437
    invoke-virtual {v1, v0}, Lcom/fyber/requesters/OfferWallRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/OfferWallRequester;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/OfferWallRequester;->request(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/interstitials/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/a/b;->interstitialError(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V
    .locals 0

    .prologue
    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/fyber/ads/interstitials/a/b;->interstitialClosed(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    .line 468
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->e()V

    .line 469
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->f()V

    .line 470
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v1, "html"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->f:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 176
    if-eqz v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 179
    iput v4, v0, Landroid/os/Message;->what:I

    .line 180
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v2, "preload"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    const-string v0, "ExchangeInterstitial"

    const-string v2, "Preload payload - true"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->d()V

    .line 190
    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/fyber/ads/interstitials/a/b;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 53
    .line 9296
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->e:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 9298
    new-instance v0, Lcom/fyber/ads/interstitials/a/b$2;

    invoke-direct {v0, p0}, Lcom/fyber/ads/interstitials/a/b$2;-><init>(Lcom/fyber/ads/interstitials/a/b;)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->e:Landroid/webkit/WebViewClient;

    .line 9363
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->e:Landroid/webkit/WebViewClient;

    .line 53
    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/interstitials/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fyber/ads/interstitials/a/b;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method static synthetic c(Lcom/fyber/ads/interstitials/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->k:Ljava/lang/String;

    const-string v1, "preload"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/interstitials/a/b;->interstitialError(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/fyber/ads/interstitials/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 291
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    .line 3415
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    if-eqz v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->removeAllViews()V

    .line 3417
    iput-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    .line 4403
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 4404
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4406
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4407
    if-eqz v0, :cond_1

    .line 4408
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4410
    :cond_1
    iput-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    .line 400
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/fyber/ads/interstitials/a/b;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->interstitialClicked()V

    return-void
.end method

.method static synthetic f(Lcom/fyber/ads/interstitials/a/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 423
    iput-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->f:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->h:Lcom/fyber/c/d/d$a;

    .line 425
    iput-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    .line 426
    iput-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->d:Landroid/webkit/WebView;

    .line 427
    iput-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->j:Lcom/fyber/ads/interstitials/a/d;

    .line 428
    iput-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->k:Ljava/lang/String;

    .line 429
    return-void
.end method

.method static synthetic g(Lcom/fyber/ads/interstitials/a/b;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->j:Lcom/fyber/ads/interstitials/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/a/d;->a(ILjava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->b()V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->j:Lcom/fyber/ads/interstitials/a/d;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonVideoEnded:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-direct {p0, p2, v0}, Lcom/fyber/ads/interstitials/a/b;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    goto :goto_0

    .line 7463
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/fyber/ads/interstitials/a/b;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    goto :goto_0
.end method

.method protected final checkForAds(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->f()V

    .line 124
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->e()V

    .line 126
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->getCreativeType()Lcom/fyber/ads/interstitials/a/a;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/fyber/ads/interstitials/a/b$3;->a:[I

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/a/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 136
    const-string v1, "invalid_offer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to check ads for an unknown creative type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/interstitials/a/b;->setAdError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    :goto_0
    return-void

    .line 1141
    :pswitch_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v1, "video_url"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1142
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 1143
    if-eqz v1, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v2, "alert_message"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1145
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1146
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->INT_VIDEO_DIALOG_CLOSE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    :cond_0
    new-instance v2, Lcom/fyber/c/d/d$a;

    invoke-direct {v2}, Lcom/fyber/c/d/d$a;-><init>()V

    .line 1149
    invoke-virtual {v2, v0}, Lcom/fyber/c/d/d$a;->a(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v2

    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v3, "click_through_url"

    const-class v4, Ljava/lang/String;

    .line 1150
    invoke-virtual {v0, v3, v4}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/fyber/c/d/d$a;->b(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v2

    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v3, "click_through_text"

    const-class v4, Ljava/lang/String;

    .line 1151
    invoke-virtual {v0, v3, v4}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/fyber/c/d/d$a;->c(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v0

    .line 1152
    invoke-virtual {v0, v1}, Lcom/fyber/c/d/d$a;->d(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v2, "close_button_delay"

    const-class v3, Ljava/lang/Number;

    const/4 v4, 0x0

    .line 1153
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fyber/c/d/d$a;->a(Ljava/lang/Float;)Lcom/fyber/c/d/d$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/ads/interstitials/a/c;

    invoke-direct {v1}, Lcom/fyber/ads/interstitials/a/c;-><init>()V

    .line 1154
    invoke-virtual {v0, v1}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/d$b;)Lcom/fyber/c/d/d$a;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Lcom/fyber/c/d/d$a;->a()Lcom/fyber/c/d/d$a;

    move-result-object v1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    const-string v2, "show_alert"

    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    .line 1156
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/fyber/ads/interstitials/b/a;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fyber/c/d/d$a;->a(Z)Lcom/fyber/c/d/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->h:Lcom/fyber/c/d/d$a;

    .line 1157
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/a/b;->a(Landroid/content/Context;)Z

    .line 1158
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->setAdAvailable()V

    goto/16 :goto_0

    .line 1160
    :cond_1
    const-string v0, "invalid_offer"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/a/b;->setAdError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1166
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->setAdAvailable()V

    goto/16 :goto_0

    .line 1168
    :cond_2
    const-string v0, "invalid_offer"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/a/b;->setAdError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final notifyOnBackPressed()Z
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->notifyOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    .line 445
    :cond_0
    const-string v0, "back_btn"

    .line 4463
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/interstitials/a/b;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    .line 446
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyOnUserLeft()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "app_background"

    .line 5463
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/interstitials/a/b;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    .line 452
    return-void
.end method

.method public final onAdAvailable(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method public final onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 459
    const-string v0, "abort_btn"

    .line 6463
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/interstitials/a/b;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    .line 460
    return-void
.end method

.method public final onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method protected final show(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v3, -0x1

    .line 200
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iput-object p1, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    .line 203
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/fyber/ads/interstitials/InterstitialActivity;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->a:Landroid/app/Activity;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->setMarketPlaceInterstitialListener(Lcom/fyber/mediation/MediationUserActivityListener;)V

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 209
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 212
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 215
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->getCreativeType()Lcom/fyber/ads/interstitials/a/a;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/fyber/ads/interstitials/a/b$3;->a:[I

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/a/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to show interstitial for an unknown creative type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/a/b;->interstitialError(Ljava/lang/String;)V

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1236
    :pswitch_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->h:Lcom/fyber/c/d/d$a;

    if-eqz v0, :cond_3

    .line 1239
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 1240
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->a()V

    .line 1242
    :cond_2
    new-instance v0, Lcom/fyber/ads/interstitials/a/d;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    iget-object v2, p0, Lcom/fyber/ads/interstitials/a/b;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/fyber/ads/interstitials/a/d;-><init>(Lcom/fyber/ads/interstitials/b/a;Z)V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->j:Lcom/fyber/ads/interstitials/a/d;

    .line 1243
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->h:Lcom/fyber/c/d/d$a;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/a/b;->j:Lcom/fyber/ads/interstitials/a/d;

    invoke-virtual {v0, v1}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/b;)Lcom/fyber/c/d/d$a;

    move-result-object v0

    .line 1244
    invoke-virtual {v0, p0}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/d$d;)Lcom/fyber/c/d/d$a;

    move-result-object v0

    .line 1245
    invoke-virtual {v0, p1}, Lcom/fyber/c/d/d$a;->a(Landroid/app/Activity;)Lcom/fyber/c/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    .line 1246
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1247
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->a()V

    .line 1248
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->b()V

    .line 1249
    iget-object v0, p0, Lcom/fyber/ads/interstitials/a/b;->i:Lcom/fyber/c/d/d;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->interstitialShown()V

    goto :goto_0

    .line 1254
    :cond_3
    const-string v0, "An error occurred while trying to show the ad"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/a/b;->interstitialError(Ljava/lang/String;)V

    goto :goto_0

    .line 2230
    :pswitch_1
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->a()V

    .line 2231
    invoke-direct {p0}, Lcom/fyber/ads/interstitials/a/b;->b()V

    .line 2232
    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/a/b;->interstitialShown()V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
