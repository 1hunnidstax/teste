.class public Lcom/vungle/publisher/bm;
.super Lcom/vungle/publisher/z;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/bo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Lcom/vungle/publisher/z",
        "<TA;>;",
        "Lcom/vungle/publisher/bo",
        "<TA;>;"
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/cj;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vungle/publisher/z;-><init>(Lcom/vungle/publisher/cj;)V

    .line 14
    iput-boolean p2, p0, Lcom/vungle/publisher/bm;->a:Z

    .line 15
    return-void
.end method
