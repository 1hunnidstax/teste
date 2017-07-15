.class final Lcom/vungle/publisher/ajd$1$1$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/ajd$1$1;->a(Lcom/vungle/publisher/ahr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ahr;

.field final synthetic b:Lcom/vungle/publisher/ajd$1$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajd$1$1;Lcom/vungle/publisher/ahr;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vungle/publisher/ajd$1$1$1;->b:Lcom/vungle/publisher/ajd$1$1;

    iput-object p2, p0, Lcom/vungle/publisher/ajd$1$1$1;->a:Lcom/vungle/publisher/ahr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1$1;->b:Lcom/vungle/publisher/ajd$1$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1$1;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1$1;->a:Lcom/vungle/publisher/ahr;

    invoke-interface {v0, p1, p2}, Lcom/vungle/publisher/ahr;->a(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1$1;->b:Lcom/vungle/publisher/ajd$1$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->b:Lcom/vungle/publisher/ahs$a;

    new-instance v1, Lcom/vungle/publisher/ajd$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/publisher/ajd$1$1$1$1;-><init>(Lcom/vungle/publisher/ajd$1$1$1;J)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    goto :goto_0
.end method
