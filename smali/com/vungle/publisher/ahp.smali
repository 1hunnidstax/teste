.class public Lcom/vungle/publisher/ahp;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ahp$b;,
        Lcom/vungle/publisher/ahp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/ahp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahp$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/vungle/publisher/ahp;->a:Lcom/vungle/publisher/ahp$a;

    .line 60
    return-void
.end method

.method public static a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahp$a",
            "<TT;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/vungle/publisher/ahp;

    invoke-static {p0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ahp;-><init>(Lcom/vungle/publisher/ahp$a;)V

    return-object v0
.end method

.method public static a(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahp;)Lcom/vungle/publisher/ahv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;)",
            "Lcom/vungle/publisher/ahv;"
        }
    .end annotation

    .prologue
    .line 10219
    iget-object v0, p1, Lcom/vungle/publisher/ahp;->a:Lcom/vungle/publisher/ahp$a;

    if-nez v0, :cond_0

    .line 10223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10231
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/ahu;->k_()V

    .line 10238
    instance-of v0, p0, Lcom/vungle/publisher/alk;

    if-nez v0, :cond_1

    .line 10240
    new-instance v0, Lcom/vungle/publisher/alk;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/alk;-><init>(Lcom/vungle/publisher/ahu;)V

    move-object p0, v0

    .line 10247
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/vungle/publisher/ahp;->a:Lcom/vungle/publisher/ahp$a;

    invoke-static {p1, v0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/ahp$a;->a(Ljava/lang/Object;)V

    .line 10248
    invoke-static {p0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahv;)Lcom/vungle/publisher/ahv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10270
    :goto_0
    return-object v0

    .line 10249
    :catch_0
    move-exception v0

    .line 10251
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 10253
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v1, v1, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v1, :cond_2

    .line 10254
    invoke-static {v0}, Lcom/vungle/publisher/alp;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 10270
    :goto_1
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    goto :goto_0

    .line 10258
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/vungle/publisher/alp;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 10259
    :catch_1
    move-exception v1

    .line 10260
    invoke-static {v1}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 10263
    new-instance v2, Lcom/vungle/publisher/aia;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/vungle/publisher/aia;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10265
    invoke-static {v2}, Lcom/vungle/publisher/alp;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10267
    throw v2
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahp$b",
            "<+TR;-TT;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lcom/vungle/publisher/ait;

    iget-object v1, p0, Lcom/vungle/publisher/ahp;->a:Lcom/vungle/publisher/ahp$a;

    invoke-direct {v0, v1, p1}, Lcom/vungle/publisher/ait;-><init>(Lcom/vungle/publisher/ahp$a;Lcom/vungle/publisher/ahp$b;)V

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aij;)Lcom/vungle/publisher/ahp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahp",
            "<+TT2;>;",
            "Lcom/vungle/publisher/aij",
            "<-TT;-TT2;+TR;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 12652
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/ahp;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/aje;

    invoke-direct {v1, p2}, Lcom/vungle/publisher/aje;-><init>(Lcom/vungle/publisher/aij;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aif",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5883
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v0

    .line 5884
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v1

    .line 5885
    new-instance v2, Lcom/vungle/publisher/ajv;

    invoke-direct {v2, v0, p1, v1}, Lcom/vungle/publisher/ajv;-><init>(Lcom/vungle/publisher/aif;Lcom/vungle/publisher/aif;Lcom/vungle/publisher/aie;)V

    .line 5887
    new-instance v0, Lcom/vungle/publisher/aiq;

    invoke-direct {v0, p0, v2}, Lcom/vungle/publisher/aiq;-><init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahq;)V

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/aii",
            "<-TT;+",
            "Lcom/vungle/publisher/ahp",
            "<+TR;>;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6740
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vungle/publisher/akc;

    if-ne v0, v1, :cond_0

    .line 6741
    check-cast p0, Lcom/vungle/publisher/akc;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/akc;->d(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    .line 6743
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ahp;->b(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/vungle/publisher/akc;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/vungle/publisher/akc;

    new-instance v1, Lcom/vungle/publisher/akf$1;

    invoke-direct {v1}, Lcom/vungle/publisher/akf$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/akc;->d(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vungle/publisher/ajb$a;->a:Lcom/vungle/publisher/ajb;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)",
            "Lcom/vungle/publisher/ahv;"
        }
    .end annotation

    .prologue
    .line 10149
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/ahu;->k_()V

    .line 10151
    iget-object v0, p0, Lcom/vungle/publisher/ahp;->a:Lcom/vungle/publisher/ahp$a;

    invoke-static {p0, v0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahp$a;->a(Ljava/lang/Object;)V

    .line 10152
    invoke-static {p1}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahv;)Lcom/vungle/publisher/ahv;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 10169
    :goto_0
    return-object v0

    .line 10153
    :catch_0
    move-exception v0

    .line 10155
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 10158
    :try_start_1
    invoke-static {v0}, Lcom/vungle/publisher/alp;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 10169
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    goto :goto_0

    .line 10159
    :catch_1
    move-exception v1

    .line 10160
    invoke-static {v1}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 10163
    new-instance v2, Lcom/vungle/publisher/aia;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/vungle/publisher/aia;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10165
    invoke-static {v2}, Lcom/vungle/publisher/alp;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10167
    throw v2
.end method

.method public final b(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aif",
            "<-TT;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5908
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v0

    .line 5909
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v1

    .line 5910
    new-instance v2, Lcom/vungle/publisher/ajv;

    invoke-direct {v2, p1, v0, v1}, Lcom/vungle/publisher/ajv;-><init>(Lcom/vungle/publisher/aif;Lcom/vungle/publisher/aif;Lcom/vungle/publisher/aie;)V

    .line 5912
    new-instance v0, Lcom/vungle/publisher/aiq;

    invoke-direct {v0, p0, v2}, Lcom/vungle/publisher/aiq;-><init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahq;)V

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/aii",
            "<-TT;+TR;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7541
    new-instance v0, Lcom/vungle/publisher/aiu;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/aiu;-><init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;)V

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aii",
            "<-",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;)",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9073
    invoke-static {p1}, Lcom/vungle/publisher/ajw;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/aii;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vungle/publisher/aiw;->a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
