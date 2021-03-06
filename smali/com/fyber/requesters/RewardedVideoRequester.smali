.class public Lcom/fyber/requesters/RewardedVideoRequester;
.super Lcom/fyber/requesters/Requester;
.source "RewardedVideoRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/requesters/RewardedVideoRequester$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/RewardedVideoRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/fyber/requesters/RewardedVideoRequester$a;


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/Callback;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    .line 114
    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/fyber/requesters/RewardedVideoRequester;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/RewardedVideoRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/RequestCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Lcom/fyber/requesters/RewardedVideoRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/RewardedVideoRequester;-><init>(Lcom/fyber/requesters/Callback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/RewardedVideoRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    new-instance v0, Lcom/fyber/requesters/RewardedVideoRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/RewardedVideoRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/RequestCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 26
    return-object p0
.end method

.method public notifyUserOnCompletion(Z)Lcom/fyber/requesters/RewardedVideoRequester;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/fyber/requesters/RewardedVideoRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "SHOULD_NOTIFY_ON_USER_ENGAGED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/b;->b()Z

    move-result v0

    .line 85
    iput-object p1, p0, Lcom/fyber/requesters/RewardedVideoRequester;->d:Landroid/content/Context;

    .line 86
    if-eqz v0, :cond_2

    .line 88
    const-string v0, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/RewardedVideoRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 89
    const-string v0, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/RewardedVideoRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string v0, "SHOULD_NOTIFY_ON_USER_ENGAGED"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/RewardedVideoRequester;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 91
    const-string v0, "CURRENCY_REQUESTER"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 93
    sget-object v4, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v4, v3}, Lcom/fyber/ads/videos/b;->a(Z)V

    .line 94
    sget-object v3, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v3, v1}, Lcom/fyber/ads/videos/b;->a(Ljava/util/Map;)Z

    .line 95
    sget-object v1, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v1, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/requesters/VirtualCurrencyRequester;)Z

    .line 96
    sget-object v0, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/b;->a(Ljava/lang/String;)Z

    .line 98
    sget-object v0, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    .line 1131
    iget-object v1, p0, Lcom/fyber/requesters/RewardedVideoRequester;->e:Lcom/fyber/requesters/RewardedVideoRequester$a;

    if-nez v1, :cond_0

    .line 1132
    new-instance v1, Lcom/fyber/requesters/RewardedVideoRequester$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fyber/requesters/RewardedVideoRequester$a;-><init>(Lcom/fyber/requesters/RewardedVideoRequester;B)V

    iput-object v1, p0, Lcom/fyber/requesters/RewardedVideoRequester;->e:Lcom/fyber/requesters/RewardedVideoRequester$a;

    .line 1134
    :cond_0
    iget-object v1, p0, Lcom/fyber/requesters/RewardedVideoRequester;->e:Lcom/fyber/requesters/RewardedVideoRequester$a;

    .line 98
    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/c;)Z

    .line 100
    :try_start_0
    sget-object v0, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/a/a;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    const-string v1, "RewardedVideoRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "something went wrong with the video request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/fyber/requesters/RequestError;->UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0
.end method

.method public withVirtualCurrencyRequester(Lcom/fyber/requesters/VirtualCurrencyRequester;)Lcom/fyber/requesters/RewardedVideoRequester;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/fyber/requesters/RewardedVideoRequester;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CURRENCY_REQUESTER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "CURRENCY_ID"

    invoke-virtual {p1, v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "RewardedVideoRequester"

    const-string v1, "A currency ID was detected in the parameters. It will not be used. The currency related to the ad displayed will be used instead."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-object p0
.end method
