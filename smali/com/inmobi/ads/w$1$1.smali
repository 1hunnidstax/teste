.class Lcom/inmobi/ads/w$1$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/w$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w$1;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/inmobi/ads/w$1$1;->a:Lcom/inmobi/ads/w$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/inmobi/ads/w$1$1;->a:Lcom/inmobi/ads/w$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/w$1$1;->a:Lcom/inmobi/ads/w$1;

    iget v1, v1, Lcom/inmobi/ads/w$1;->a:I

    iget-object v2, p0, Lcom/inmobi/ads/w$1$1;->a:Lcom/inmobi/ads/w$1;

    iget-object v2, v2, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    invoke-virtual {v2}, Lcom/inmobi/ads/w;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/inmobi/ads/w$1$1$1;

    invoke-direct {v3, p0}, Lcom/inmobi/ads/w$1$1$1;-><init>(Lcom/inmobi/ads/w$1$1;)V

    .line 315
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 310
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/w;->a(ILjava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V

    .line 316
    return-void
.end method
