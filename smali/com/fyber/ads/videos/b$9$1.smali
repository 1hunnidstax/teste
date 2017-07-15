.class final Lcom/fyber/ads/videos/b$9$1;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Lcom/fyber/ads/videos/mediation/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/b$9;->a(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b$9;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b$9;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/fyber/ads/videos/b$9$1;->a:Lcom/fyber/ads/videos/b$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 730
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    if-ne p3, v0, :cond_0

    .line 731
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "adapter_version"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    const-string v1, "timeout"

    aput-object v1, v0, v6

    const-string v1, "network"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 735
    :goto_0
    const-string v1, "%s(\'validate\', {tpn:\'%s\', id:%s, result:\'%s\', %s})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string v3, "id"

    .line 736
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p3, v2, v7

    aput-object v0, v2, v8

    .line 735
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 737
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notifying - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/fyber/ads/videos/b$9$1;->a:Lcom/fyber/ads/videos/b$9;

    iget-object v1, v1, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1, v0}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    .line 739
    return-void

    .line 733
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "adapter_version"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
