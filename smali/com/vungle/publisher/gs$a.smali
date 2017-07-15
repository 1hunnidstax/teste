.class public final Lcom/vungle/publisher/gs$a;
.super Lcom/vungle/publisher/cj$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/gs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cj$a",
        "<",
        "Lcom/vungle/publisher/gs;",
        "Lcom/vungle/publisher/adu;",
        ">;",
        "Lcom/vungle/publisher/dw",
        "<",
        "Lcom/vungle/publisher/gs;",
        "Lcom/vungle/publisher/adu;",
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
            "Lcom/vungle/publisher/gs;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/gt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vungle/publisher/cj$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/gs;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gs;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;

    .line 103
    const-string v0, "html_content"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/gs;->q:Ljava/lang/String;

    .line 104
    return-object p1
.end method

.method private e()Lcom/vungle/publisher/gt;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/gs$a;->e:Lcom/vungle/publisher/gt$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/gt$a;->a(Lcom/vungle/publisher/cj$a;)Lcom/vungle/publisher/dx;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gt;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gs;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vungle/publisher/gs$a;->e()Lcom/vungle/publisher/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/gt;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 2

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/adu;

    invoke-super {p0, p1}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gs;

    iget-object v1, p1, Lcom/vungle/publisher/adu;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/gs;->q:Ljava/lang/String;

    sget-object v1, Lcom/vungle/publisher/cj$c;->a:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/gs;->a(Lcom/vungle/publisher/cj$c;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/gs;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/gs$a;->a(Lcom/vungle/publisher/gs;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gs;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/gs;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/gs$a;->a(Lcom/vungle/publisher/gs;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/vungle/publisher/dn;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/vungle/publisher/cj$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dn;

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/vungle/publisher/j;->d:Lcom/vungle/publisher/j;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 82
    new-array v0, p1, [Lcom/vungle/publisher/gs;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/gs$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gs;

    return-object v0
.end method

.method public final synthetic i_()Lcom/vungle/publisher/dx;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vungle/publisher/gs$a;->e()Lcom/vungle/publisher/gt;

    move-result-object v0

    return-object v0
.end method

.method public final j_()Lcom/vungle/publisher/cj$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cj$a",
            "<",
            "Lcom/vungle/publisher/gs;",
            "Lcom/vungle/publisher/adu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    return-object p0
.end method
