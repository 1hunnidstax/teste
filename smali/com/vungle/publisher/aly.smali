.class public Lcom/vungle/publisher/aly;
.super Lcom/vungle/publisher/alz;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/alz",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/vungle/publisher/all;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/all",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/vungle/publisher/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/alz",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/alz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/alz",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/vungle/publisher/aly$1;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/aly$1;-><init>(Lcom/vungle/publisher/alz;)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/alz;-><init>(Lcom/vungle/publisher/ahp$a;)V

    .line 51
    iput-object p1, p0, Lcom/vungle/publisher/aly;->c:Lcom/vungle/publisher/alz;

    .line 52
    new-instance v0, Lcom/vungle/publisher/all;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/all;-><init>(Lcom/vungle/publisher/ahq;)V

    iput-object v0, p0, Lcom/vungle/publisher/aly;->b:Lcom/vungle/publisher/all;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/aly;->b:Lcom/vungle/publisher/all;

    invoke-virtual {v0}, Lcom/vungle/publisher/all;->a()V

    .line 58
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
    .line 67
    iget-object v0, p0, Lcom/vungle/publisher/aly;->b:Lcom/vungle/publisher/all;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/all;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/aly;->b:Lcom/vungle/publisher/all;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/all;->a(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method
