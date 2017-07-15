.class public final Lcom/vungle/publisher/eo$a;
.super Lcom/vungle/publisher/jk$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jk$a",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/en;",
        "Lcom/vungle/publisher/adr;",
        ">;",
        "Lcom/vungle/publisher/dw",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/adr;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ep$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/jp$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/eo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/en$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/eu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/ds$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/ft$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/vungle/publisher/jk$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/adr;)Lcom/vungle/publisher/eo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/qs;
        }
    .end annotation

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eo;

    .line 197
    iget-object v1, p0, Lcom/vungle/publisher/eo$a;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/eo;->a(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/vungle/publisher/eo$a;->e:Lcom/vungle/publisher/ep$a;

    sget-object v2, Lcom/vungle/publisher/el$b;->b:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/ep$a;->a(Lcom/vungle/publisher/eo;Lcom/vungle/publisher/adr;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/ep;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    .line 200
    iget-object v1, p0, Lcom/vungle/publisher/eo$a;->k:Lcom/vungle/publisher/ds$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ds$a;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ds;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/eo;->r:Lcom/vungle/publisher/ds;

    .line 201
    sget-object v1, Lcom/vungle/publisher/cj$c;->a:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/eo;->a(Lcom/vungle/publisher/cj$c;)V

    .line 202
    return-object v0
.end method

.method private a(Lcom/vungle/publisher/eo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eo;
    .locals 1

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/jk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jk;

    .line 218
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/eo;->a(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/vungle/publisher/eo$a;->k:Lcom/vungle/publisher/ds$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ds$a;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ds;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/eo;->r:Lcom/vungle/publisher/ds;

    .line 220
    if-eqz p3, :cond_0

    .line 221
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/eo;Z)Lcom/vungle/publisher/ep;

    .line 223
    :cond_0
    return-object p1
.end method

.method private g()Lcom/vungle/publisher/eu;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vungle/publisher/eo$a;->j:Lcom/vungle/publisher/eu$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/eu$a;->a(Lcom/vungle/publisher/cj$a;)Lcom/vungle/publisher/dx;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eu;

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
            "Lcom/vungle/publisher/eo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/vungle/publisher/eo$a;->g()Lcom/vungle/publisher/eu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eu;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/vungle/publisher/adr;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/adr;)Lcom/vungle/publisher/eo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/vungle/publisher/eo;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/eo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/vungle/publisher/eo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/eo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/vungle/publisher/dn;
    .locals 1

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/vungle/publisher/jk$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dn;

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/eo;Z)Lcom/vungle/publisher/ep;
    .locals 3

    .prologue
    .line 228
    iget-boolean v0, p1, Lcom/vungle/publisher/eo;->v:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p1, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    .line 235
    :goto_0
    return-object v0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/eo$a;->e:Lcom/vungle/publisher/ep$a;

    iget-object v0, p1, Lcom/vungle/publisher/eo;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/el$b;->b:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/ep$a;->a(Ljava/lang/String;Lcom/vungle/publisher/el$b;Z)Lcom/vungle/publisher/jp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ep;

    iput-object v0, p1, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/eo;->v:Z

    goto :goto_0
.end method

.method protected final a()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/vungle/publisher/j;->a:Lcom/vungle/publisher/j;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/vungle/publisher/adr;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/adr;)Lcom/vungle/publisher/eo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jk;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Lcom/vungle/publisher/eo;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/eo;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eo;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 151
    new-array v0, p1, [Lcom/vungle/publisher/eo;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vungle/publisher/eo$a;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eo;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/jh$a;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vungle/publisher/eo$a;->l:Lcom/vungle/publisher/ft$a;

    return-object v0
.end method

.method protected final bridge synthetic f()Lcom/vungle/publisher/jj$a;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vungle/publisher/eo$a;->h:Lcom/vungle/publisher/en$a;

    return-object v0
.end method

.method public final synthetic i_()Lcom/vungle/publisher/dx;
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/vungle/publisher/eo$a;->g()Lcom/vungle/publisher/eu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j_()Lcom/vungle/publisher/cj$a;
    .locals 0

    .prologue
    .line 151
    return-object p0
.end method
