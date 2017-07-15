.class public final Lcom/vungle/publisher/kn$a;
.super Lcom/vungle/publisher/cq$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cq$a",
        "<",
        "Lcom/vungle/publisher/kn;",
        "Lcom/vungle/publisher/ki;",
        "Lcom/vungle/publisher/ko;",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/aef;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/js$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ki$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/kn;",
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
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vungle/publisher/cq$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/kn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kn;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cq$a;->a(Lcom/vungle/publisher/cq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cq;

    .line 91
    const-string v0, "download_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kn;->o:Ljava/lang/Long;

    .line 92
    const-string v0, "template_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kn;->w:Ljava/lang/String;

    .line 93
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/kn$a;->c:Lcom/vungle/publisher/js$a;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/cq;
    .locals 2

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/js;

    invoke-super {p0, p1}, Lcom/vungle/publisher/cq$a;->a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/cq;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kn;

    iget-object v1, p0, Lcom/vungle/publisher/kn$a;->g:Lcom/vungle/publisher/do$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/do$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/do;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/kn;->v:Lcom/vungle/publisher/do;

    iget-object v1, p1, Lcom/vungle/publisher/js;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/kn;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cq;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/kn;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/kn$a;->a(Lcom/vungle/publisher/kn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kn;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cq;Lcom/vungle/publisher/cj;Z)Lcom/vungle/publisher/cq;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/kn;

    check-cast p2, Lcom/vungle/publisher/js;

    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cq$a;->a(Lcom/vungle/publisher/cq;Lcom/vungle/publisher/cj;Z)Lcom/vungle/publisher/cq;

    iget-object v0, p0, Lcom/vungle/publisher/kn$a;->g:Lcom/vungle/publisher/do$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/do$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/do;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kn;->v:Lcom/vungle/publisher/do;

    iget-object v0, p1, Lcom/vungle/publisher/kn;->a:Lcom/vungle/publisher/cj;

    check-cast v0, Lcom/vungle/publisher/js;

    iget-object v0, v0, Lcom/vungle/publisher/js;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/vungle/publisher/kn;->w:Ljava/lang/String;

    return-object p1
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/kn;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/kn$a;->a(Lcom/vungle/publisher/kn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kn;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 64
    new-array v0, p1, [Lcom/vungle/publisher/kn;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/kn$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kn;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/cp$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/kn$a;->e:Lcom/vungle/publisher/ki$a;

    return-object v0
.end method

.method public final f()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/vungle/publisher/j;->c:Lcom/vungle/publisher/j;

    return-object v0
.end method
