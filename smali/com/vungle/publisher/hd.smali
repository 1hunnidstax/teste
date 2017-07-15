.class public final Lcom/vungle/publisher/hd;
.super Lcom/vungle/publisher/cq;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/hd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cq",
        "<",
        "Lcom/vungle/publisher/hd;",
        "Lcom/vungle/publisher/gy;",
        "Lcom/vungle/publisher/he;",
        "Lcom/vungle/publisher/gs;",
        ">;",
        "Lcom/vungle/publisher/ec;"
    }
.end annotation


# instance fields
.field v:Lcom/vungle/publisher/hd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vungle/publisher/cq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/hd;->v:Lcom/vungle/publisher/hd$a;

    return-object v0
.end method

.method public final a_(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public final bridge synthetic b()Lcom/vungle/publisher/cq$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/hd;->v:Lcom/vungle/publisher/hd$a;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/cp$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/hd;->v:Lcom/vungle/publisher/hd$a;

    iget-object v0, v0, Lcom/vungle/publisher/hd$a;->e:Lcom/vungle/publisher/gy$a;

    return-object v0
.end method
