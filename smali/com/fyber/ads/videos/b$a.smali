.class final Lcom/fyber/ads/videos/b$a;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Lcom/fyber/c/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:D

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput-object p1, p0, Lcom/fyber/ads/videos/b$a;->a:Landroid/os/Handler;

    .line 982
    return-void
.end method

.method private a(Lcom/fyber/c/d/a;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1037
    invoke-static {p2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fyber/c/d/a;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    :goto_0
    const-string v1, "%s(\'play\', {tpn:\'%s\', result:\'%s\', id:\'%s\', %s})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v2, v4

    const-string v3, "local"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->c(Ljava/lang/String;)V

    .line 1045
    return-void

    .line 1040
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1048
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript client called with URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/fyber/ads/videos/b$a;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1051
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1052
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1053
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1055
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 987
    sget-object v0, Lcom/fyber/c/d/a;->g:Lcom/fyber/c/d/a;

    const-string v1, "video"

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method public final a(I)V
    .locals 6

    .prologue
    .line 997
    int-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/fyber/ads/videos/b$a;->b:D

    .line 998
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s(\'play\', {tpn:\'%s\', result:\'%s\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "local"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/fyber/c/d/a;->a:Lcom/fyber/c/d/a;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/fyber/ads/videos/b$a;->b:D

    .line 999
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 998
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->c(Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1023
    sget-object v0, Lcom/fyber/c/d/a;->f:Lcom/fyber/c/d/a;

    invoke-direct {p0, v0, p1}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    .line 993
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1013
    sget-object v0, Lcom/fyber/c/d/a;->d:Lcom/fyber/c/d/a;

    .line 2032
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public final b(I)V
    .locals 8

    .prologue
    .line 1005
    int-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1006
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%s(\'play\', {tpn:\'%s\', result:\'%s\', currentTime:\'%.3f\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "local"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/fyber/c/d/a;->c:Lcom/fyber/c/d/a;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1007
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    iget-wide v6, p0, Lcom/fyber/ads/videos/b$a;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1006
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->c(Ljava/lang/String;)V

    .line 1009
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1028
    sget-object v0, Lcom/fyber/c/d/a;->b:Lcom/fyber/c/d/a;

    invoke-direct {p0, v0, p1}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1018
    sget-object v0, Lcom/fyber/c/d/a;->e:Lcom/fyber/c/d/a;

    .line 3032
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;Ljava/lang/String;)V

    .line 1019
    return-void
.end method
