.class public final Lcom/vungle/publisher/aix;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lcom/vungle/publisher/ahs;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lcom/vungle/publisher/ahs;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/vungle/publisher/aix;->a:J

    .line 37
    iput-object p3, p0, Lcom/vungle/publisher/aix;->b:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-object p4, p0, Lcom/vungle/publisher/aix;->c:Lcom/vungle/publisher/ahs;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 30
    check-cast p1, Lcom/vungle/publisher/ahu;

    iget-object v0, p0, Lcom/vungle/publisher/aix;->c:Lcom/vungle/publisher/ahs;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs;->a()Lcom/vungle/publisher/ahs$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    new-instance v1, Lcom/vungle/publisher/aix$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/aix$1;-><init>(Lcom/vungle/publisher/aix;Lcom/vungle/publisher/ahu;)V

    iget-wide v2, p0, Lcom/vungle/publisher/aix;->a:J

    iget-object v4, p0, Lcom/vungle/publisher/aix;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;

    return-void
.end method
