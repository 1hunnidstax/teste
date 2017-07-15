.class public final Lcom/vungle/publisher/hd$a;
.super Lcom/vungle/publisher/cq$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cq$a",
        "<",
        "Lcom/vungle/publisher/hd;",
        "Lcom/vungle/publisher/gy;",
        "Lcom/vungle/publisher/he;",
        "Lcom/vungle/publisher/gs;",
        "Lcom/vungle/publisher/adu;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/gs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/gy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vungle/publisher/cq$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/hd$a;->c:Lcom/vungle/publisher/gs$a;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vungle/publisher/hd;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/hd$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hd;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/cp$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/hd$a;->e:Lcom/vungle/publisher/gy$a;

    return-object v0
.end method

.method public final f()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/vungle/publisher/j;->d:Lcom/vungle/publisher/j;

    return-object v0
.end method
