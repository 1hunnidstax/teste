.class final Lcom/vungle/publisher/aja$1$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aja$1;->a(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/vungle/publisher/aja$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aja$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/aja$1$2;->b:Lcom/vungle/publisher/aja$1;

    iput-object p2, p0, Lcom/vungle/publisher/aja$1$2;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$2;->b:Lcom/vungle/publisher/aja$1;

    iget-boolean v0, v0, Lcom/vungle/publisher/aja$1;->b:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$2;->b:Lcom/vungle/publisher/aja$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vungle/publisher/aja$1;->b:Z

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$2;->b:Lcom/vungle/publisher/aja$1;

    iget-object v0, v0, Lcom/vungle/publisher/aja$1;->d:Lcom/vungle/publisher/ahu;

    iget-object v1, p0, Lcom/vungle/publisher/aja$1$2;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/aja$1$2;->b:Lcom/vungle/publisher/aja$1;

    iget-object v0, v0, Lcom/vungle/publisher/aja$1;->c:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs$a;->b()V

    .line 76
    :cond_0
    return-void
.end method
