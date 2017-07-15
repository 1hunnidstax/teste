.class final Lcom/vungle/publisher/ama$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ama$b;

.field final synthetic b:Lcom/vungle/publisher/ama;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ama;Lcom/vungle/publisher/ama$b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vungle/publisher/ama$1;->b:Lcom/vungle/publisher/ama;

    iput-object p2, p0, Lcom/vungle/publisher/ama$1;->a:Lcom/vungle/publisher/ama$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/ama$1;->b:Lcom/vungle/publisher/ama;

    iget-object v1, p0, Lcom/vungle/publisher/ama$1;->a:Lcom/vungle/publisher/ama$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ama;->a(Lcom/vungle/publisher/ama$b;)V

    .line 73
    return-void
.end method
