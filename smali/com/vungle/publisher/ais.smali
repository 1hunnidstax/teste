.class public final Lcom/vungle/publisher/ais;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ais$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/ais;->a:Ljava/lang/Iterable;

    .line 43
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 34
    check-cast p1, Lcom/vungle/publisher/ahu;

    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ais;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v2, p1, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v2, v2, Lcom/vungle/publisher/akd;->b:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/vungle/publisher/ahu;->a()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0, p1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/vungle/publisher/ais$a;

    invoke-direct {v1, p1, v0}, Lcom/vungle/publisher/ais$a;-><init>(Lcom/vungle/publisher/ahu;Ljava/util/Iterator;)V

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    goto :goto_0
.end method
