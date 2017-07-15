.class public final Lcom/vungle/publisher/vi$a;
.super Lcom/vungle/publisher/vs$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/vi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/vs$a",
        "<",
        "Lcom/vungle/publisher/vi;",
        ">;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/gg",
        "<*>;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Lcom/vungle/publisher/vi;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vungle/publisher/vs$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    check-cast p1, Lcom/vungle/publisher/gg;

    invoke-virtual {p0}, Lcom/vungle/publisher/vi$a;->c()Lcom/vungle/publisher/vs;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vi;

    invoke-interface {p1}, Lcom/vungle/publisher/gg;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/vungle/publisher/vi;

    invoke-direct {v0}, Lcom/vungle/publisher/vi;-><init>()V

    return-object v0
.end method
