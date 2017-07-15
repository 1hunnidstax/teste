.class final Lcom/inmobi/ads/ab$2;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ab;

.field final synthetic b:Lcom/inmobi/ads/ab$b;

.field final synthetic c:Lcom/inmobi/ads/InMobiAdRequestStatus;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/inmobi/ads/ab$2;->a:Lcom/inmobi/ads/ab;

    iput-object p2, p0, Lcom/inmobi/ads/ab$2;->b:Lcom/inmobi/ads/ab$b;

    iput-object p3, p0, Lcom/inmobi/ads/ab$2;->c:Lcom/inmobi/ads/InMobiAdRequestStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/inmobi/ads/ab$2;->a:Lcom/inmobi/ads/ab;

    invoke-static {v0}, Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ab$2;->b:Lcom/inmobi/ads/ab$b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 787
    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab$a;

    .line 789
    if-eqz v0, :cond_0

    .line 790
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/inmobi/ads/ab$2;->c:Lcom/inmobi/ads/InMobiAdRequestStatus;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/ab$a;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 793
    :cond_0
    return-void
.end method
