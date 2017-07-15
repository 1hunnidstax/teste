.class final Lcom/vungle/publisher/nh$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/nh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 100
    iput-object p1, p0, Lcom/vungle/publisher/nh$1;->a:Lcom/vungle/publisher/nh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/nh$1;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->j:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ty;

    invoke-direct {v1}, Lcom/vungle/publisher/ty;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
