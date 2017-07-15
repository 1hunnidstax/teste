.class final Lcom/vungle/publisher/yc$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/yc;->a(Lcom/vungle/publisher/cq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/cq;

.field final synthetic b:Lcom/vungle/publisher/yc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yc;Lcom/vungle/publisher/cq;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vungle/publisher/yc$1;->b:Lcom/vungle/publisher/yc;

    iput-object p2, p0, Lcom/vungle/publisher/yc$1;->a:Lcom/vungle/publisher/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/yc$1;->b:Lcom/vungle/publisher/yc;

    iget-object v0, v0, Lcom/vungle/publisher/yc;->c:Lcom/vungle/publisher/ym;

    iget-object v1, p0, Lcom/vungle/publisher/yc$1;->a:Lcom/vungle/publisher/cq;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ym;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/we;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/vungle/publisher/yc$1;->b:Lcom/vungle/publisher/yc;

    iget-object v1, v1, Lcom/vungle/publisher/yc;->j:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending report ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
