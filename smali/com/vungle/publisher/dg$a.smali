.class final Lcom/vungle/publisher/dg$a;
.super Lcom/vungle/publisher/jp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jp$a",
        "<",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/dg;",
        "Lcom/vungle/publisher/aef;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dg;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/gh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/jc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/vungle/publisher/jp$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/dg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dg;
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;

    .line 176
    const-string v0, "extension"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dg;->b:Ljava/lang/String;

    .line 177
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dg;->c:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/gh;->a(Landroid/database/Cursor;)V

    .line 179
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcom/vungle/publisher/dg;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/dg$a;->a(Lcom/vungle/publisher/dg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dg;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcom/vungle/publisher/dg;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/dg$a;->a(Lcom/vungle/publisher/dg;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/js;Lcom/vungle/publisher/aef;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/js;",
            "Lcom/vungle/publisher/aef;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p2, Lcom/vungle/publisher/aef;->l:Lcom/vungle/publisher/aeu;

    .line 165
    iget-object v0, v0, Lcom/vungle/publisher/aeu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aet;

    .line 168
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jp;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/dg;

    sget-object v4, Lcom/vungle/publisher/el$b;->e:Lcom/vungle/publisher/el$b;

    iput-object v4, v1, Lcom/vungle/publisher/dg;->r:Lcom/vungle/publisher/el$b;

    iget-object v4, v0, Lcom/vungle/publisher/aet;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vungle/publisher/aet;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vungle/publisher/aet;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, v1, Lcom/vungle/publisher/dg;->c:Ljava/lang/String;

    iput-object v5, v1, Lcom/vungle/publisher/dg;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    iput-object v4, v0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/vungle/publisher/dg$a;->c:Lcom/vungle/publisher/jc$a;

    invoke-virtual {p1}, Lcom/vungle/publisher/js;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/vungle/publisher/dg;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v6}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/vungle/publisher/jc$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/jc;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/dg;->d:Lcom/vungle/publisher/jc;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create asset with null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_5
    return-object v2
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 136
    new-array v0, p1, [Lcom/vungle/publisher/dg;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/dg$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dg;

    iget-object v1, p0, Lcom/vungle/publisher/dg$a;->b:Lcom/vungle/publisher/gh$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh$a;->a(Lcom/vungle/publisher/gh$b;)Lcom/vungle/publisher/gh;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    return-object v0
.end method
