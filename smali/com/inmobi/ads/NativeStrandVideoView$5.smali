.class Lcom/inmobi/ads/NativeStrandVideoView$5;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandVideoView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$5;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$5;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0, p2}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;I)I

    .line 328
    return-void
.end method
