.class public final Lcom/vungle/publisher/js$a;
.super Lcom/vungle/publisher/cj$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cj$a",
        "<",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/aef;",
        ">;",
        "Lcom/vungle/publisher/dw",
        "<",
        "Lcom/vungle/publisher/js;",
        "Lcom/vungle/publisher/aef;",
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
            "Lcom/vungle/publisher/js;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/agt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/dg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljavax/inject/Provider;
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

.field h:Lcom/vungle/publisher/jy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/jt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/kd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/kx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/jc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/ds$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/vungle/publisher/cj$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/js;Landroid/database/Cursor;Z)Lcom/vungle/publisher/js;
    .locals 2

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;

    .line 285
    const-string v0, "delete_local_content_attempts"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/js;->k:I

    .line 286
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/js;->l:Ljava/lang/Long;

    .line 287
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/js;->a(Ljava/lang/String;)V

    .line 288
    const-string v0, "prepare_retry_count"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/js;->n:I

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/js;->o:J

    .line 290
    iget-object v0, p0, Lcom/vungle/publisher/js$a;->k:Lcom/vungle/publisher/kx$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/kx$a;->a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/jh;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kx;

    iput-object v0, p1, Lcom/vungle/publisher/js;->z:Lcom/vungle/publisher/kx;

    .line 291
    iget-object v0, p0, Lcom/vungle/publisher/js$a;->m:Lcom/vungle/publisher/ds$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ds$a;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ds;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/js;->A:Lcom/vungle/publisher/ds;

    .line 292
    const-string v0, "template_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/js;->B:Ljava/lang/String;

    .line 293
    if-eqz p3, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;)Ljava/util/List;

    .line 295
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;Z)Lcom/vungle/publisher/jt;

    .line 297
    :cond_0
    return-object p1
.end method

.method private e()Lcom/vungle/publisher/jy;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vungle/publisher/js$a;->h:Lcom/vungle/publisher/jy$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/jy$a;->a(Lcom/vungle/publisher/cj$a;)Lcom/vungle/publisher/dx;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jy;

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
            "Lcom/vungle/publisher/js;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/vungle/publisher/js$a;->e()Lcom/vungle/publisher/jy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/jy;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final synthetic a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 4

    .prologue
    .line 217
    check-cast p1, Lcom/vungle/publisher/aef;

    invoke-super {p0, p1}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/js;

    iget-object v1, p1, Lcom/vungle/publisher/ade;->c:Ljava/lang/Long;

    iput-object v1, v0, Lcom/vungle/publisher/js;->l:Ljava/lang/Long;

    iget-object v1, p0, Lcom/vungle/publisher/js$a;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/js;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/js$a;->f:Lcom/vungle/publisher/dg$a;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/dg$a;->a(Lcom/vungle/publisher/js;Lcom/vungle/publisher/aef;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/vungle/publisher/js$a;->i:Lcom/vungle/publisher/jt$a;

    sget-object v2, Lcom/vungle/publisher/el$b;->d:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/jt$a;->a(Lcom/vungle/publisher/js;Lcom/vungle/publisher/aef;Lcom/vungle/publisher/el$b;)Lcom/vungle/publisher/jt;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    iget-object v1, p0, Lcom/vungle/publisher/js$a;->k:Lcom/vungle/publisher/kx$a;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/kx$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jh;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/kx;

    iput-object v1, v0, Lcom/vungle/publisher/js;->z:Lcom/vungle/publisher/kx;

    iget-object v1, p0, Lcom/vungle/publisher/js$a;->m:Lcom/vungle/publisher/ds$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ds$a;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ds;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/js;->A:Lcom/vungle/publisher/ds;

    iget-object v1, p1, Lcom/vungle/publisher/aef;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/js;->B:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/publisher/aef;->k:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/vungle/publisher/js$a;->l:Lcom/vungle/publisher/jc$a;

    iget-object v1, v0, Lcom/vungle/publisher/js;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/vungle/publisher/jc$a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/js;->y:Ljava/util/List;

    :cond_0
    sget-object v1, Lcom/vungle/publisher/cj$c;->a:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/js;->a(Lcom/vungle/publisher/cj$c;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 217
    check-cast p1, Lcom/vungle/publisher/js;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;Landroid/database/Cursor;Z)Lcom/vungle/publisher/js;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 217
    check-cast p1, Lcom/vungle/publisher/js;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;Landroid/database/Cursor;Z)Lcom/vungle/publisher/js;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/vungle/publisher/dn;
    .locals 1

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/vungle/publisher/cj$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dn;

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/j;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/vungle/publisher/j;->c:Lcom/vungle/publisher/j;

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/js;Z)Lcom/vungle/publisher/jt;
    .locals 3

    .prologue
    .line 302
    iget-boolean v0, p1, Lcom/vungle/publisher/js;->r:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p1, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/js$a;->i:Lcom/vungle/publisher/jt$a;

    iget-object v0, p1, Lcom/vungle/publisher/js;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/el$b;->d:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/jt$a;->a(Ljava/lang/String;Lcom/vungle/publisher/el$b;Z)Lcom/vungle/publisher/jp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jt;

    iput-object v0, p1, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/js;->r:Z

    goto :goto_0
.end method

.method final a(Lcom/vungle/publisher/js;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/js;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dg;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 313
    iget-boolean v0, p1, Lcom/vungle/publisher/js;->q:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p1, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    .line 319
    :goto_0
    return-object v0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/js$a;->f:Lcom/vungle/publisher/dg$a;

    sget-object v2, Lcom/vungle/publisher/el$b;->e:Lcom/vungle/publisher/el$b;

    iget-object v0, p1, Lcom/vungle/publisher/js;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2}, Lcom/vungle/publisher/el$b;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "ad_id = ? AND type = ?"

    invoke-virtual {v1, v0, v3}, Lcom/vungle/publisher/jp$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    .line 317
    iput-boolean v5, p1, Lcom/vungle/publisher/js;->q:Z

    goto :goto_0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 217
    new-array v0, p1, [Lcom/vungle/publisher/js;

    return-object v0
.end method

.method public final synthetic b(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)I
    .locals 1

    .prologue
    .line 217
    check-cast p1, Lcom/vungle/publisher/js;

    check-cast p2, Lcom/vungle/publisher/aef;

    iget-object v0, p2, Lcom/vungle/publisher/ade;->c:Ljava/lang/Long;

    iput-object v0, p1, Lcom/vungle/publisher/js;->l:Ljava/lang/Long;

    iget-object v0, p1, Lcom/vungle/publisher/js;->z:Lcom/vungle/publisher/kx;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/kx;->a(Lcom/vungle/publisher/ade;)Ljava/util/Map;

    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cj$a;->b(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)I

    move-result v0

    return v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vungle/publisher/js$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/js;

    return-object v0
.end method

.method public final synthetic i_()Lcom/vungle/publisher/dx;
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/vungle/publisher/js$a;->e()Lcom/vungle/publisher/jy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j_()Lcom/vungle/publisher/cj$a;
    .locals 0

    .prologue
    .line 217
    return-object p0
.end method
