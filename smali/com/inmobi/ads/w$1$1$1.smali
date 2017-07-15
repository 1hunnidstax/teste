.class Lcom/inmobi/ads/w$1$1$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/w$1$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w$1$1;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/inmobi/ads/w$1$1$1;->a:Lcom/inmobi/ads/w$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/inmobi/ads/w$1$1$1;->a:Lcom/inmobi/ads/w$1$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$1$1;->a:Lcom/inmobi/ads/w$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$1;->b:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/w$1$1$1;->a:Lcom/inmobi/ads/w$1$1;

    iget-object v1, v1, Lcom/inmobi/ads/w$1$1;->a:Lcom/inmobi/ads/w$1;

    iget v1, v1, Lcom/inmobi/ads/w$1;->a:I

    invoke-static {v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;I)V

    .line 314
    return-void
.end method
