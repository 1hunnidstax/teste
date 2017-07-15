.class public final Lcom/vungle/publisher/ajy;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Lcom/vungle/publisher/ahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vungle/publisher/ajy;->b:Lcom/vungle/publisher/ahq;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/ajy;->b:Lcom/vungle/publisher/ahq;

    invoke-interface {v0}, Lcom/vungle/publisher/ahq;->a()V

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/ajy;->b:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/ajy;->b:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method
