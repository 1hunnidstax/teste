.class public Lcom/fyber/requesters/InterstitialRequester;
.super Lcom/fyber/requesters/Requester;
.source "InterstitialRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/InterstitialRequester;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/RequestCallback;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    .line 96
    return-void
.end method

.method public static create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/InterstitialRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/RequestCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 33
    new-instance v0, Lcom/fyber/requesters/InterstitialRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/InterstitialRequester;-><init>(Lcom/fyber/requesters/RequestCallback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/InterstitialRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    new-instance v0, Lcom/fyber/requesters/InterstitialRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/InterstitialRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/RequestCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/AdRequestCallback;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 23
    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/InterstitialRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/fyber/ads/interstitials/b/b;->a()Lcom/fyber/ads/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/internal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-object v0, Lcom/fyber/ads/internal/c;->b:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    .line 63
    const-string v0, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/InterstitialRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 64
    const-string v0, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/InterstitialRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/AdRequestCallback;

    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Lcom/fyber/requesters/a/a;

    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    iget-object v4, p0, Lcom/fyber/requesters/InterstitialRequester;->c:Landroid/os/Handler;

    invoke-direct {v1, v0, v4}, Lcom/fyber/requesters/a/a;-><init>(Lcom/fyber/requesters/AdRequestCallback;Landroid/os/Handler;)V

    move-object v0, v1

    .line 73
    :goto_0
    new-instance v1, Lcom/fyber/b/b/c$a;

    invoke-direct {v1}, Lcom/fyber/b/b/c$a;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lcom/fyber/b/b/c$a;->a(Lcom/fyber/requesters/Callback;)Lcom/fyber/b/b$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/c$a;

    .line 75
    invoke-virtual {v0, v2}, Lcom/fyber/b/b/c$a;->a(Ljava/util/Map;)Lcom/fyber/b/b$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/c$a;

    .line 76
    invoke-virtual {v0, v3}, Lcom/fyber/b/b/c$a;->a(Ljava/lang/String;)Lcom/fyber/b/b$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/c$a;

    .line 1110
    new-instance v1, Lcom/fyber/b/b/c;

    invoke-direct {v1, v0}, Lcom/fyber/b/b/c;-><init>(Lcom/fyber/b/b/c$a;)V

    .line 79
    invoke-virtual {v1, p1}, Lcom/fyber/b/b/c;->a(Landroid/content/Context;)V

    .line 84
    :cond_0
    :goto_1
    return-void

    .line 71
    :cond_1
    new-instance v1, Lcom/fyber/requesters/a/c;

    iget-object v0, p0, Lcom/fyber/requesters/InterstitialRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    iget-object v4, p0, Lcom/fyber/requesters/InterstitialRequester;->c:Landroid/os/Handler;

    invoke-direct {v1, v0, v4}, Lcom/fyber/requesters/a/c;-><init>(Lcom/fyber/requesters/RequestCallback;Landroid/os/Handler;)V

    move-object v0, v1

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/InterstitialRequester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_1
.end method
