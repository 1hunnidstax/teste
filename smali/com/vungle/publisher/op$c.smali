.class final Lcom/vungle/publisher/op$c;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/op$c$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/op;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/ba;)V
    .locals 5
    .param p1, "event"    # Lcom/vungle/publisher/ba;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/vungle/publisher/op$c;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->j(Lcom/vungle/publisher/op;)Lcom/vungle/publisher/nx;

    move-result-object v2

    .line 679
    iget v0, p1, Lcom/vungle/publisher/ba;->b:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, v2, Lcom/vungle/publisher/nx;->a:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/nx;->setAndCacheSoundEnabled(Z)V

    const-string v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "volume change "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v1, "un"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mute"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/nx;->b()V

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/nx;->a(Z)V

    .line 680
    :cond_0
    return-void

    .line 679
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method
