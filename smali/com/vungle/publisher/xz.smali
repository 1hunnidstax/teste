.class public final Lcom/vungle/publisher/xz;
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
        "Lcom/vungle/publisher/vs;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Lcom/vungle/publisher/vy;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/wi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/vungle/publisher/vs;

    iget-object v0, p0, Lcom/vungle/publisher/xz;->a:Lcom/vungle/publisher/wi;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/wi;->a(Lcom/vungle/publisher/vs;)Lcom/vungle/publisher/vy;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    return-object v0
.end method
