.class abstract Lcom/vungle/publisher/ala;
.super Lcom/vungle/publisher/aky;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/aky",
        "<TE;>;"
    }
.end annotation


# instance fields
.field volatile f:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/vungle/publisher/aky;-><init>(I)V

    .line 94
    return-void
.end method
