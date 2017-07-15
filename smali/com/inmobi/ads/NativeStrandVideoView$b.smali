.class final Lcom/inmobi/ads/NativeStrandVideoView$b;
.super Landroid/os/Handler;
.source "NativeStrandVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/NativeStrandVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$b;->a:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoView;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 173
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getDuration()I

    move-result v3

    .line 140
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v4

    .line 143
    const/4 v1, -0x1

    if-eq v3, v1, :cond_3

    .line 144
    if-eqz v4, :cond_3

    .line 145
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/av;

    .line 146
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ1"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    mul-int/lit8 v2, v4, 0x4

    sub-int/2addr v2, v3

    if-ltz v2, :cond_1

    .line 148
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    move-result-object v2

    sget-object v5, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q1:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    invoke-interface {v2, v5}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V

    .line 152
    :cond_1
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ2"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    mul-int/lit8 v2, v4, 0x2

    sub-int/2addr v2, v3

    if-ltz v2, :cond_2

    .line 154
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ2"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    move-result-object v2

    sget-object v5, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q2:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    invoke-interface {v2, v5}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V

    .line 158
    :cond_2
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v5, "didCompleteQ3"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    mul-int/lit8 v2, v4, 0x4

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    if-ltz v2, :cond_3

    .line 160
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ3"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q3:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V

    .line 166
    :cond_3
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v7, v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView$b;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
