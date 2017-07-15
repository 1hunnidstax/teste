.class final Lcom/fyber/ads/videos/mediation/c$1;
.super Ljava/lang/Object;
.source "RewardedVideoMediationJSInterface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/mediation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/mediation/c;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/mediation/c;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fyber/ads/videos/mediation/c$1;->a:Lcom/fyber/ads/videos/mediation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 40
    :pswitch_0
    const-string v0, "RewardedVideoMediationJSInterface"

    const-string v1, "Timeout reached, returning \"false\" as default"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/fyber/ads/videos/mediation/c$1;->a:Lcom/fyber/ads/videos/mediation/c;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/mediation/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1639
        :pswitch_0
    .end packed-switch
.end method
