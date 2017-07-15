.class final Lcom/vungle/publisher/aiw$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/vungle/publisher/ahp;

    new-instance v0, Lcom/vungle/publisher/aiw$1$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/aiw$1$1;-><init>(Lcom/vungle/publisher/aiw$1;)V

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahp;->b(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
