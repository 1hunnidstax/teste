.class public final Lcom/vungle/publisher/ait;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TR;>;"
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

.field final b:Lcom/vungle/publisher/ahp$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp$b",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahp$a;Lcom/vungle/publisher/ahp$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp$a",
            "<TT;>;",
            "Lcom/vungle/publisher/ahp$b",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vungle/publisher/ait;->a:Lcom/vungle/publisher/ahp$a;

    .line 38
    iput-object p2, p0, Lcom/vungle/publisher/ait;->b:Lcom/vungle/publisher/ahp$b;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lcom/vungle/publisher/ahu;

    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ait;->b:Lcom/vungle/publisher/ahp$b;

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahp$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->k_()V

    iget-object v1, p0, Lcom/vungle/publisher/ait;->a:Lcom/vungle/publisher/ahp$a;

    invoke-interface {v1, v0}, Lcom/vungle/publisher/ahp$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
