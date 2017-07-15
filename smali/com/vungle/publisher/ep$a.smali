.class public final Lcom/vungle/publisher/ep$a;
.super Lcom/vungle/publisher/em$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/em$a",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/ep;",
        "Lcom/vungle/publisher/adr;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ep;",
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
    .line 44
    invoke-direct {p0}, Lcom/vungle/publisher/em$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/vungle/publisher/em$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method final bridge synthetic a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/em;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/vungle/publisher/eo;

    check-cast p2, Lcom/vungle/publisher/adr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ep$a;->a(Lcom/vungle/publisher/eo;Lcom/vungle/publisher/adr;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/ep;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/eo;Lcom/vungle/publisher/adr;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/ep;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p2, :cond_0

    .line 49
    sget-object v1, Lcom/vungle/publisher/el$b;->b:Lcom/vungle/publisher/el$b;

    if-ne p3, v1, :cond_1

    .line 50
    iget-object v1, p2, Lcom/vungle/publisher/adr;->k:Ljava/lang/String;

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/em;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ep;

    .line 53
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ep;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-object v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot create archive of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/em$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/vungle/publisher/ep;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/vungle/publisher/em$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/ep$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ep;

    iget-object v1, p0, Lcom/vungle/publisher/ep$a;->a:Lcom/vungle/publisher/gh$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh$a;->a(Lcom/vungle/publisher/gh$b;)Lcom/vungle/publisher/gh;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ep;->g:Lcom/vungle/publisher/gh;

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/vungle/publisher/em$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
