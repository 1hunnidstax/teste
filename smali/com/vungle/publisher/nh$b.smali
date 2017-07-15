.class public final Lcom/vungle/publisher/nh$b;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nh$b$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/nh;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/uf;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/vungle/publisher/nh$b;->a:Lcom/vungle/publisher/nh;

    sget-object v1, Lcom/vungle/publisher/te$b;->a:Lcom/vungle/publisher/te$b;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/nh;->a(Lcom/vungle/publisher/te$b;IJ)V

    .line 343
    iget-object v0, p0, Lcom/vungle/publisher/nh$b;->a:Lcom/vungle/publisher/nh;

    invoke-virtual {v0, v2, v2, v4, v5}, Lcom/vungle/publisher/nh;->a(ZIJ)V

    .line 344
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/uh;)V
    .locals 2

    .prologue
    .line 337
    const-string v0, "VungleEvent"

    const-string v1, "throw incentivized dialog"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/vungle/publisher/nh$b;->a:Lcom/vungle/publisher/nh;

    invoke-static {v0}, Lcom/vungle/publisher/nh;->a(Lcom/vungle/publisher/nh;)V

    .line 339
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ui;)V
    .locals 6
    .param p1, "event"    # Lcom/vungle/publisher/ui;

    .prologue
    .line 325
    iget-object v0, p1, Lcom/vungle/publisher/ui;->a:Lcom/vungle/publisher/te$b;

    .line 326
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set close region: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/vungle/publisher/nh$b;->a:Lcom/vungle/publisher/nh;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/vungle/publisher/nh;->a(Lcom/vungle/publisher/te$b;IJ)V

    .line 328
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/uj;)V
    .locals 6
    .param p1, "event"    # Lcom/vungle/publisher/uj;

    .prologue
    .line 331
    iget-boolean v0, p1, Lcom/vungle/publisher/uj;->a:Z

    .line 332
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use custom privacy icon? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/vungle/publisher/nh$b;->a:Lcom/vungle/publisher/nh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/vungle/publisher/nh;->a(ZIJ)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
