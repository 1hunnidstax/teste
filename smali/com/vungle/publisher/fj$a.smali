.class public final Lcom/vungle/publisher/fj$a;
.super Lcom/vungle/publisher/jn$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jn$a",
        "<",
        "Lcom/vungle/publisher/fj;",
        "Lcom/vungle/publisher/fe;",
        "Lcom/vungle/publisher/fk;",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/en;",
        "Lcom/vungle/publisher/adr;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/eo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/fe$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/fj;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/do$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vungle/publisher/jn$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/cq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cq;

    .line 102
    const-string v0, "download_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fj;->o:Ljava/lang/Long;

    .line 103
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/fj$a;->c:Lcom/vungle/publisher/eo$a;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cq;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/fj;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/fj$a;->a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cq;Lcom/vungle/publisher/cj;Z)Lcom/vungle/publisher/cq;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/fj;

    check-cast p2, Lcom/vungle/publisher/eo;

    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/cq;Lcom/vungle/publisher/cj;Z)Lcom/vungle/publisher/cq;

    iget-object v0, p0, Lcom/vungle/publisher/fj$a;->g:Lcom/vungle/publisher/do$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/do$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/do;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fj;->x:Lcom/vungle/publisher/do;

    return-object p1
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/fj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/fj$a;->a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 68
    new-array v0, p1, [Lcom/vungle/publisher/fj;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/fj$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fj;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/cp$a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/fj$a;->e:Lcom/vungle/publisher/fe$a;

    return-object v0
.end method

.method public final f()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/vungle/publisher/j;->a:Lcom/vungle/publisher/j;

    return-object v0
.end method
