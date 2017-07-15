.class Lcom/inmobi/rendering/mraid/d$1;
.super Ljava/lang/Object;
.source "MediaRenderView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/d;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/d;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/d;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/d;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> onVideoSizeChanged"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/d;->a(Lcom/inmobi/rendering/mraid/d;)Lcom/inmobi/rendering/mraid/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    new-instance v1, Lcom/inmobi/rendering/mraid/d$a;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/mraid/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/d;->a(Lcom/inmobi/rendering/mraid/d;Lcom/inmobi/rendering/mraid/d$a;)Lcom/inmobi/rendering/mraid/d$a;

    .line 138
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/d;->a(Lcom/inmobi/rendering/mraid/d;)Lcom/inmobi/rendering/mraid/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/d$a;->setAnchorView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/d;->a(Lcom/inmobi/rendering/mraid/d;)Lcom/inmobi/rendering/mraid/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/d;->setMediaController(Landroid/widget/MediaController;)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/d;->requestLayout()V

    .line 141
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d$1;->a:Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/d;->requestFocus()Z

    .line 143
    :cond_0
    return-void
.end method
