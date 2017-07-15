.class final Lcom/vungle/publisher/op$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/vungle/publisher/op;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/op;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/vungle/publisher/op$3;->b:Lcom/vungle/publisher/op;

    iput-object p2, p0, Lcom/vungle/publisher/op$3;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vungle/publisher/op$3;->b:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->a(Lcom/vungle/publisher/op;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "VungleAd"

    const-string v1, "cta overlay onClick"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/vungle/publisher/op$3;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/vungle/publisher/op$3;->b:Lcom/vungle/publisher/op;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/op;->b(Z)V

    .line 319
    iget-object v0, p0, Lcom/vungle/publisher/op$3;->b:Lcom/vungle/publisher/op;

    iget-object v0, v0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/w;

    sget-object v2, Lcom/vungle/publisher/jl$a;->l:Lcom/vungle/publisher/jl$a;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/w;-><init>(Lcom/vungle/publisher/jl$a;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v0, "VungleAd"

    const-string v1, "cta overlay onClick, but not enabled"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
