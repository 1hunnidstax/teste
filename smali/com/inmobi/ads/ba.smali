.class final Lcom/inmobi/ads/ba;
.super Landroid/os/Handler;
.source "RenderTimeoutHandler.java"


# instance fields
.field private a:Lcom/inmobi/ads/AdUnit;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/inmobi/ads/ba;->a:Lcom/inmobi/ads/AdUnit;

    .line 18
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/ba;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->stopLoading()V

    .line 28
    iget-object v0, p0, Lcom/inmobi/ads/ba;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->J()V

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
