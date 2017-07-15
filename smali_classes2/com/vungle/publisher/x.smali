.class public final Lcom/vungle/publisher/x;
.super Lcom/vungle/publisher/z;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Lcom/vungle/publisher/z",
        "<TA;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vungle/publisher/jl$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/jl$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/vungle/publisher/jl$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vungle/publisher/z;-><init>(Lcom/vungle/publisher/cj;)V

    .line 11
    iput-object p2, p0, Lcom/vungle/publisher/x;->a:Lcom/vungle/publisher/jl$a;

    .line 12
    return-void
.end method
