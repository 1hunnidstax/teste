.class Lcom/inmobi/ads/NativeStrandVideoView$8;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Lcom/inmobi/commons/core/utilities/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandVideoView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$8;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 2

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$8;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 428
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ4"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$8;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 433
    :cond_0
    return-void
.end method
