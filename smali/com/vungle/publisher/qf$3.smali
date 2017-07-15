.class final Lcom/vungle/publisher/qf$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/qf;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/vungle/publisher/qf;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/qf;Z)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vungle/publisher/qf$3;->b:Lcom/vungle/publisher/qf;

    iput-boolean p2, p0, Lcom/vungle/publisher/qf$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/qf$3;->b:Lcom/vungle/publisher/qf;

    iget-object v0, v0, Lcom/vungle/publisher/qf;->a:Lcom/vungle/publisher/EventListener;

    iget-object v1, p0, Lcom/vungle/publisher/qf$3;->b:Lcom/vungle/publisher/qf;

    iget-boolean v1, v1, Lcom/vungle/publisher/qf;->b:Z

    iget-boolean v2, p0, Lcom/vungle/publisher/qf$3;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/vungle/publisher/EventListener;->onAdEnd(ZZ)V

    .line 95
    return-void
.end method
