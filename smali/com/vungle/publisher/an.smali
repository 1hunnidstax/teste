.class public abstract Lcom/vungle/publisher/an;
.super Lcom/vungle/publisher/qd;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/ade;",
        ">",
        "Lcom/vungle/publisher/qd;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vungle/publisher/ade;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final b:Lcom/vungle/publisher/xk;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ade;Lcom/vungle/publisher/xk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/vungle/publisher/xk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/qd;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/vungle/publisher/an;->a:Lcom/vungle/publisher/ade;

    .line 13
    iput-object p2, p0, Lcom/vungle/publisher/an;->b:Lcom/vungle/publisher/xk;

    .line 14
    return-void
.end method
