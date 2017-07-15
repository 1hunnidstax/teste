.class final Lcom/vungle/publisher/ajw$f;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/ahp",
        "<+",
        "Lcom/vungle/publisher/aho",
        "<*>;>;",
        "Lcom/vungle/publisher/ahp",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<-",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lcom/vungle/publisher/ahp",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aii;)V
    .locals 0
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
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/vungle/publisher/ajw$f;->a:Lcom/vungle/publisher/aii;

    .line 219
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 214
    check-cast p1, Lcom/vungle/publisher/ahp;

    iget-object v0, p0, Lcom/vungle/publisher/ajw$f;->a:Lcom/vungle/publisher/aii;

    sget-object v1, Lcom/vungle/publisher/ajw;->f:Lcom/vungle/publisher/ajw$b;

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahp;->b(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahp;

    return-object v0
.end method
