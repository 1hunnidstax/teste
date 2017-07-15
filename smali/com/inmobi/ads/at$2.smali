.class Lcom/inmobi/ads/at$2;
.super Ljava/lang/Object;
.source "NativeV2VideoAdContainer.java"

# interfaces
.implements Lcom/inmobi/ads/at$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/at;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/at;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/inmobi/ads/at$2;->a:Lcom/inmobi/ads/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/NativeStrandVideoView;Z)V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 177
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/ads/at$2$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/inmobi/ads/at$2$1;-><init>(Lcom/inmobi/ads/at$2;Lcom/inmobi/ads/av;ZLcom/inmobi/ads/NativeStrandVideoView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_0
    return-void
.end method
