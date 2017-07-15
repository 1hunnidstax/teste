.class final Lcom/vungle/publisher/aja$1$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aja$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aja$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aja$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vungle/publisher/aja$1$1;->a:Lcom/vungle/publisher/aja$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$1;->a:Lcom/vungle/publisher/aja$1;

    iget-boolean v0, v0, Lcom/vungle/publisher/aja$1;->b:Z

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$1;->a:Lcom/vungle/publisher/aja$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vungle/publisher/aja$1;->b:Z

    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$1;->a:Lcom/vungle/publisher/aja$1;

    iget-object v0, v0, Lcom/vungle/publisher/aja$1;->d:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 61
    :cond_0
    return-void
.end method
