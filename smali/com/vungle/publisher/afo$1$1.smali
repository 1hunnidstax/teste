.class final Lcom/vungle/publisher/afo$1$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afo$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/afo$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afo$1;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vungle/publisher/afo$1$1;->a:Lcom/vungle/publisher/afo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    const v2, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/agv;->a(III)I

    move-result v0

    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retry in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/afo$1$1;->a:Lcom/vungle/publisher/afo$1;

    iget-object v3, v3, Lcom/vungle/publisher/afo$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/vungle/publisher/afo$1$1;->a:Lcom/vungle/publisher/afo$1;

    iget-object v3, v3, Lcom/vungle/publisher/afo$1;->c:Lcom/vungle/publisher/afo;

    iget-object v3, v3, Lcom/vungle/publisher/afo;->a:Lcom/vungle/publisher/ahs;

    new-instance v4, Lcom/vungle/publisher/aix;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/vungle/publisher/aix;-><init>(JLjava/util/concurrent/TimeUnit;Lcom/vungle/publisher/ahs;)V

    invoke-static {v4}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
