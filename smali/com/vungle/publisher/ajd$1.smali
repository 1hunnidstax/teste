.class final Lcom/vungle/publisher/ajd$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ahu;

.field final synthetic b:Lcom/vungle/publisher/ahs$a;

.field final synthetic c:Lcom/vungle/publisher/ajd;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajd;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahs$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vungle/publisher/ajd$1;->c:Lcom/vungle/publisher/ajd;

    iput-object p2, p0, Lcom/vungle/publisher/ajd$1;->a:Lcom/vungle/publisher/ahu;

    iput-object p3, p0, Lcom/vungle/publisher/ajd$1;->b:Lcom/vungle/publisher/ahs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/vungle/publisher/ajd$1$1;

    iget-object v2, p0, Lcom/vungle/publisher/ajd$1;->a:Lcom/vungle/publisher/ahu;

    invoke-direct {v1, p0, v2, v0}, Lcom/vungle/publisher/ajd$1$1;-><init>(Lcom/vungle/publisher/ajd$1;Lcom/vungle/publisher/ahu;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1;->c:Lcom/vungle/publisher/ajd;

    iget-object v0, v0, Lcom/vungle/publisher/ajd;->b:Lcom/vungle/publisher/ahp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    .line 95
    return-void
.end method
