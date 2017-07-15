.class public final Lcom/vungle/publisher/afc;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/ade;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Lcom/vungle/publisher/dn",
        "<",
        "Lcom/vungle/publisher/cj;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cj$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/dx$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/ahp;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ade;",
            ")",
            "Lcom/vungle/publisher/ahp",
            "<",
            "Lcom/vungle/publisher/dn",
            "<",
            "Lcom/vungle/publisher/cj;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/afc;->a:Lcom/vungle/publisher/cj$b;

    iget-object v1, p1, Lcom/vungle/publisher/ade;->e:Lcom/vungle/publisher/j;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cj$b;->a(Lcom/vungle/publisher/j;)Lcom/vungle/publisher/dw;

    move-result-object v0

    .line 35
    iget-object v2, p1, Lcom/vungle/publisher/ade;->f:Ljava/lang/String;

    .line 37
    invoke-interface {v0, v2}, Lcom/vungle/publisher/dw;->a(Ljava/lang/String;)Lcom/vungle/publisher/dn;

    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 41
    :try_start_0
    iget-object v3, p0, Lcom/vungle/publisher/afc;->b:Lcom/vungle/publisher/dx$b;

    new-instance v4, Lcom/vungle/publisher/dx$b$2;

    invoke-direct {v4, v3}, Lcom/vungle/publisher/dx$b$2;-><init>(Lcom/vungle/publisher/dx$b;)V

    invoke-virtual {v4}, Lcom/vungle/publisher/dx$b$2;->a()I

    .line 42
    invoke-interface {v0, p1}, Lcom/vungle/publisher/dw;->a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dn;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received new "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/vungle/publisher/dn;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {v0}, Lcom/vungle/publisher/dn;->h_()Lcom/vungle/publisher/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/cj;->v()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    :goto_0
    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/vungle/publisher/afc;->c:Lcom/vungle/publisher/gm$a;

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error preparing ad "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", retrying"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v1}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    .line 52
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/vungle/publisher/dn;->h_()Lcom/vungle/publisher/cj;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/vungle/publisher/dw;->b(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    :goto_2
    invoke-interface {v1}, Lcom/vungle/publisher/dn;->g()Lcom/vungle/publisher/cj$c;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/dn;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    sget-object v3, Lcom/vungle/publisher/afc$1;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/cj$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 72
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 56
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error updating ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 65
    :pswitch_0
    const-string v0, "VunglePrepare"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 66
    goto/16 :goto_0

    .line 69
    :pswitch_1
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - retrying"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received invalid ad in status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/vungle/publisher/ade;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/afc;->a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
