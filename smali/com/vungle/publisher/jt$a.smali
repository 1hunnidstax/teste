.class public final Lcom/vungle/publisher/jt$a;
.super Lcom/vungle/publisher/em$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/em$a",
        "<",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/jt;",
        "Lcom/vungle/publisher/aef;",
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
            "Lcom/vungle/publisher/jt;",
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
    .line 40
    invoke-direct {p0}, Lcom/vungle/publisher/em$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/vungle/publisher/em$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method final bridge synthetic a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/em;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/vungle/publisher/js;

    check-cast p2, Lcom/vungle/publisher/aef;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jt$a;->a(Lcom/vungle/publisher/js;Lcom/vungle/publisher/aef;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/jt;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/js;Lcom/vungle/publisher/aef;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/jt;
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p2, :cond_0

    .line 45
    iget-object v1, p2, Lcom/vungle/publisher/aef;->m:Ljava/lang/String;

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/em;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jt;

    .line 48
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/jt;->a(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/em$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vungle/publisher/jt;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/vungle/publisher/em$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/jt$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jt;

    iget-object v1, p0, Lcom/vungle/publisher/jt$a;->a:Lcom/vungle/publisher/gh$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh$a;->a(Lcom/vungle/publisher/gh$b;)Lcom/vungle/publisher/gh;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jt;->g:Lcom/vungle/publisher/gh;

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/vungle/publisher/em$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
