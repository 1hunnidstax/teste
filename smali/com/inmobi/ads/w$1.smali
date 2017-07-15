.class Lcom/inmobi/ads/w$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inmobi/ads/w;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w;I)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    iput p2, p0, Lcom/inmobi/ads/w$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/w$1$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/w$1$1;-><init>(Lcom/inmobi/ads/w$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :goto_0
    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to Show Ad, canShowAd Failed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)V
    :try_end_0
    .catch Lcom/inmobi/ads/w$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inmobi/ads/w$c; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v0}, Lcom/inmobi/ads/w$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)V

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v0}, Lcom/inmobi/ads/w$c;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)V

    goto :goto_0
.end method
