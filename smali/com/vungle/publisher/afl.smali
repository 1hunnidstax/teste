.class public final Lcom/vungle/publisher/afl;
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
        "Lcom/vungle/publisher/gg",
        "<*>;",
        "Lcom/vungle/publisher/ahp",
        "<+",
        "Lcom/vungle/publisher/gg",
        "<*>;>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/vi$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/xr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/xz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/afo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 20
    check-cast p1, Lcom/vungle/publisher/gg;

    invoke-interface {p1}, Lcom/vungle/publisher/gg;->t()Lcom/vungle/publisher/el$b;

    move-result-object v1

    invoke-interface {p1}, Lcom/vungle/publisher/gg;->s()Lcom/vungle/publisher/el$a;

    move-result-object v2

    invoke-interface {p1}, Lcom/vungle/publisher/gg;->l()Ljava/lang/String;

    move-result-object v3

    const-string v0, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "preparing viewable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    sget-object v4, Lcom/vungle/publisher/afl$3;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/el$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v2, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " will begin downloading for ad_id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/afl;->a:Lcom/vungle/publisher/vi$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/afl;->c:Lcom/vungle/publisher/xz;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-static {p1}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/afl;->b:Lcom/vungle/publisher/xr;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aij;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    :pswitch_1
    iget-object v1, p0, Lcom/vungle/publisher/afl;->d:Lcom/vungle/publisher/afo;

    const/4 v2, 0x3

    const-string v3, "viewable prep failed"

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/afo;->a(ILjava/lang/String;)Lcom/vungle/publisher/aii;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/afl$2;

    invoke-direct {v2, p0}, Lcom/vungle/publisher/afl$2;-><init>(Lcom/vungle/publisher/afl;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    new-instance v2, Lcom/vungle/publisher/afl$1;

    invoke-direct {v2, p0, p1}, Lcom/vungle/publisher/afl$1;-><init>(Lcom/vungle/publisher/afl;Lcom/vungle/publisher/gg;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->c(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
