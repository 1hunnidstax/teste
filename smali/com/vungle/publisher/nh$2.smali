.class final Lcom/vungle/publisher/nh$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/mz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/nh;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/nh;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vungle/publisher/nh$2;->a:Lcom/vungle/publisher/nh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vungle/publisher/nh$2;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/publisher/th;->a(Landroid/webkit/WebView;Z)V

    .line 216
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "VungleAd"

    const-string v1, "cancel video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/vungle/publisher/nh$2;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/publisher/th;->a(Landroid/webkit/WebView;Z)V

    .line 222
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/nh$2;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vungle/publisher/th;->a(Landroid/webkit/WebView;Z)V

    .line 227
    return-void
.end method
