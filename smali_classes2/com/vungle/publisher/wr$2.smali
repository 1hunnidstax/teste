.class final Lcom/vungle/publisher/wr$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/wr;->a(Lcom/vungle/publisher/ly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ly;

.field final synthetic b:Lcom/vungle/publisher/wr;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/wr;Lcom/vungle/publisher/ly;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vungle/publisher/wr$2;->b:Lcom/vungle/publisher/wr;

    iput-object p2, p0, Lcom/vungle/publisher/wr$2;->a:Lcom/vungle/publisher/ly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/wr$2;->b:Lcom/vungle/publisher/wr;

    iget-object v0, v0, Lcom/vungle/publisher/wr;->b:Lcom/vungle/publisher/vc;

    iget-object v1, p0, Lcom/vungle/publisher/wr$2;->a:Lcom/vungle/publisher/ly;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/vc;->a(Lcom/vungle/publisher/ly;)Lcom/vungle/publisher/we;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/we;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/vungle/publisher/wr$2;->b:Lcom/vungle/publisher/wr;

    iget-object v1, v1, Lcom/vungle/publisher/wr;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleData"

    const-string v3, "error sending app fingerprint chunk"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
