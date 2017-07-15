.class Lcom/inmobi/ads/ab$1$1;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ab$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ab$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ab$1;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/inmobi/ads/ab$1$1;->a:Lcom/inmobi/ads/ab$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/inmobi/ads/ab$1$1;->a:Lcom/inmobi/ads/ab$1;

    iget-object v0, v0, Lcom/inmobi/ads/ab$1;->b:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->O()V

    .line 645
    return-void
.end method
