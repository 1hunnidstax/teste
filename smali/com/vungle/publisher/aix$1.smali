.class final Lcom/vungle/publisher/aix$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ahu;

.field final synthetic b:Lcom/vungle/publisher/aix;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aix;Lcom/vungle/publisher/ahu;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vungle/publisher/aix$1;->b:Lcom/vungle/publisher/aix;

    iput-object p2, p0, Lcom/vungle/publisher/aix$1;->a:Lcom/vungle/publisher/ahu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aix$1;->a:Lcom/vungle/publisher/ahu;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/aix$1;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/aix$1;->a:Lcom/vungle/publisher/ahu;

    invoke-static {v0, v1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0
.end method
