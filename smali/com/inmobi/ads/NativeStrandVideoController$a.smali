.class final Lcom/inmobi/ads/NativeStrandVideoController$a;
.super Landroid/os/Handler;
.source "NativeStrandVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/NativeStrandVideoController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/NativeStrandVideoController;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/NativeStrandVideoController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController$a;->a:Ljava/lang/ref/WeakReference;

    .line 278
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 284
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoController;

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->a(Lcom/inmobi/ads/NativeStrandVideoController;)I

    move-result v1

    .line 291
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->b(Lcom/inmobi/ads/NativeStrandVideoController;)Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoController$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 293
    rem-int/lit16 v1, v1, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/ads/NativeStrandVideoController$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
