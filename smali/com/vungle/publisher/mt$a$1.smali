.class public final Lcom/vungle/publisher/mt$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/mt$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/vungle/publisher/mt$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/mt$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vungle/publisher/mt$a$1;->b:Lcom/vungle/publisher/mt$a;

    iput-object p2, p0, Lcom/vungle/publisher/mt$a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vungle/publisher/mt$a$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v1, p0, Lcom/vungle/publisher/mt$a$1;->b:Lcom/vungle/publisher/mt$a;

    iget-object v1, v1, Lcom/vungle/publisher/mt$a;->b:Lcom/vungle/publisher/pn;

    invoke-interface {v1, v0}, Lcom/vungle/publisher/pn;->a(Landroid/webkit/WebView;)V

    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/mt$a$1;->b:Lcom/vungle/publisher/mt$a;

    iget-object v0, v0, Lcom/vungle/publisher/mt$a;->a:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/qc;

    invoke-direct {v1}, Lcom/vungle/publisher/qc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
