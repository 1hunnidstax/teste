.class public final Lcom/vungle/publisher/alm;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)",
            "Lcom/vungle/publisher/ahu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/vungle/publisher/alm$2;

    invoke-direct {v0, p0, p0}, Lcom/vungle/publisher/alm$2;-><init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahu;)V

    return-object v0
.end method
