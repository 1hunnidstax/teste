.class public final Lcom/vungle/publisher/hu$a;
.super Lcom/vungle/publisher/jk$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jk$a",
        "<",
        "Lcom/vungle/publisher/hu;",
        "Lcom/vungle/publisher/ht;",
        "Lcom/vungle/publisher/aea;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hu;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ht$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/ip$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vungle/publisher/jk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/aea;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/hu$a;->a(Lcom/vungle/publisher/aea;)Lcom/vungle/publisher/hu;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aea;)Lcom/vungle/publisher/hu;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hu;

    .line 63
    sget-object v1, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hu;->a(Lcom/vungle/publisher/cj$c;)V

    .line 64
    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/vungle/publisher/j;->b:Lcom/vungle/publisher/j;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/aea;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/hu$a;->a(Lcom/vungle/publisher/aea;)Lcom/vungle/publisher/hu;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/vungle/publisher/hu;

    return-object v0
.end method

.method protected final a_(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "ad"

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/hu$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hu;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/jh$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/hu$a;->f:Lcom/vungle/publisher/ip$a;

    return-object v0
.end method

.method protected final bridge synthetic f()Lcom/vungle/publisher/jj$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/hu$a;->e:Lcom/vungle/publisher/ht$a;

    return-object v0
.end method
