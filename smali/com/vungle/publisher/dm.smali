.class public abstract Lcom/vungle/publisher/dm;
.super Lcom/vungle/publisher/cj;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/vungle/publisher/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/ji;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ji;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract p()Lcom/vungle/publisher/lk;
.end method
