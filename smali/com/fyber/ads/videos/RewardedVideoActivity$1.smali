.class final Lcom/fyber/ads/videos/RewardedVideoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RewardedVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/RewardedVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/RewardedVideoActivity;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fyber/ads/videos/RewardedVideoActivity$1;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/fyber/utils/h;->a(Landroid/content/Context;)Lcom/fyber/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/b;->f()V

    .line 82
    :cond_0
    return-void
.end method
