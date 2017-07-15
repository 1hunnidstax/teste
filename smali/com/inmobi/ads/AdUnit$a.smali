.class final Lcom/inmobi/ads/AdUnit$a;
.super Landroid/os/Handler;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 1

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    .line 1214
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1250
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1220
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1221
    const-string v1, "placementId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1222
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit;

    .line 1224
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1228
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/inmobi/ads/a;

    .line 1229
    const-string v4, "adAvailable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1230
    const-string v6, "insertionTs"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1231
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/AdUnit;->b(JZLcom/inmobi/ads/a;J)V

    goto :goto_0

    .line 1234
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/ads/a;

    .line 1235
    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/a;)V

    goto :goto_0

    .line 1240
    :pswitch_4
    const-string v4, "assetAvailable"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1241
    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/ads/AdUnit;->b(JZ)V

    goto :goto_0

    .line 1244
    :pswitch_5
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->G()V

    goto :goto_0

    .line 1247
    :pswitch_6
    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->H()V

    goto :goto_0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
