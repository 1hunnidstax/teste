.class final Lcom/fyber/ads/videos/a$2;
.super Ljava/lang/Object;
.source "RewardedVideoClickthroughBrowserListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/a;->a(Lcom/fyber/c/d/d;Lcom/fyber/c/a/a;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/c/a/a;

.field final synthetic b:Lcom/fyber/c/d/d;

.field final synthetic c:Lcom/fyber/ads/videos/a;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/a;Lcom/fyber/c/a/a;Lcom/fyber/c/d/d;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fyber/ads/videos/a$2;->c:Lcom/fyber/ads/videos/a;

    iput-object p2, p0, Lcom/fyber/ads/videos/a$2;->a:Lcom/fyber/c/a/a;

    iput-object p3, p0, Lcom/fyber/ads/videos/a$2;->b:Lcom/fyber/c/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 39
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 40
    iget-object v0, p0, Lcom/fyber/ads/videos/a$2;->a:Lcom/fyber/c/a/a;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fyber/ads/videos/a$2;->a:Lcom/fyber/c/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/a/a;->invalidate()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a$2;->b:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->c()V

    goto :goto_0
.end method