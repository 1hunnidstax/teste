.class public final Lcom/vungle/publisher/aff$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aih;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aih",
        "<",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Lcom/vungle/publisher/zq;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aff;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aff;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vungle/publisher/aff$1;->a:Lcom/vungle/publisher/aff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/aff$1;->a:Lcom/vungle/publisher/aff;

    iget-object v0, v0, Lcom/vungle/publisher/aff;->k:Lcom/vungle/publisher/py;

    iget-object v0, v0, Lcom/vungle/publisher/py;->l:Landroid/content/SharedPreferences;

    const-string v1, "VgSleepWakeupTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request ad after sleep delay: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/aff$1;->a:Lcom/vungle/publisher/aff;

    iget-object v2, v2, Lcom/vungle/publisher/aff;->b:Lcom/vungle/publisher/zq$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/zq$a;->d()Lcom/vungle/publisher/zq;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/vungle/publisher/aff$1;->a:Lcom/vungle/publisher/aff;

    iget-object v4, v4, Lcom/vungle/publisher/aff;->a:Lcom/vungle/publisher/ahs;

    new-instance v5, Lcom/vungle/publisher/aja;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/vungle/publisher/aja;-><init>(JLjava/util/concurrent/TimeUnit;Lcom/vungle/publisher/ahs;)V

    invoke-virtual {v2, v5}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
