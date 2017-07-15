.class Lcom/miniclip/ads/TapjoyActivityListener;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "TapjoyHelper.java"


# instance fields
.field private ignoreNextStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/ads/TapjoyActivityListener;->ignoreNextStart:Z

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/miniclip/ads/TapjoyActivityListener;->ignoreNextStart:Z

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/ads/TapjoyActivityListener;->ignoreNextStart:Z

    .line 17
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStart(Landroid/app/Activity;)V

    .line 19
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/ads/TapjoyActivityListener;->ignoreNextStart:Z

    .line 23
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    .line 24
    return-void
.end method
