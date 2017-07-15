.class final Lcom/miniclip/ads/FyberWrapper$3;
.super Ljava/lang/Object;
.source "FyberWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ads/FyberWrapper;->presentRewardedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/miniclip/ads/FyberWrapper;->loadedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/miniclip/ads/FyberWrapper;->loadedIntent:Landroid/content/Intent;

    const/16 v2, 0x2466

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/miniclip/ads/FyberWrapper;->loadedIntent:Landroid/content/Intent;

    .line 163
    :cond_0
    return-void
.end method
