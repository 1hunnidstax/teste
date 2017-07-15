.class Lcom/inmobi/ads/InMobiBanner$3;
.super Ljava/lang/Object;
.source "InMobiBanner.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$700(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$700(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    new-instance v1, Lcom/inmobi/ads/InMobiBanner$3$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiBanner$3$1;-><init>(Lcom/inmobi/ads/InMobiBanner$3;)V

    # invokes: Lcom/inmobi/ads/InMobiBanner;->swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiBanner;->access$1000(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :cond_1
    :goto_0
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in loading banner ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner$2.onAdLoadSucceeded() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 915
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 890
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 5

    .prologue
    .line 922
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 923
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 924
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 925
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner$b;->sendMessage(Landroid/os/Message;)Z

    .line 926
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # invokes: Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$900(Lcom/inmobi/ads/InMobiBanner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in loading banner ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner$2.onAdLoadFailed() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 931
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Z)V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 965
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 966
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 967
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 968
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner$b;->sendMessage(Landroid/os/Message;)Z

    .line 969
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 938
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 979
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 980
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 981
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v1}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner$b;->sendMessage(Landroid/os/Message;)Z

    .line 982
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 943
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner$b;->sendEmptyMessage(I)Z

    .line 948
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # invokes: Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$900(Lcom/inmobi/ads/InMobiBanner;)V

    .line 954
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner$b;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in closing banner ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner$2.onAdDismissed() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 959
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner$b;->sendEmptyMessage(I)Z

    .line 974
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 987
    return-void
.end method
