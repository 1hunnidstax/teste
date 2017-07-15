.class Lcom/inmobi/ads/bq$b;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/bq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/bq;)V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bq$b;->b:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bq$b;->a:Ljava/util/ArrayList;

    .line 288
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 292
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/bq;->a(Lcom/inmobi/ads/bq;Z)Z

    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    invoke-static {v0}, Lcom/inmobi/ads/bq;->a(Lcom/inmobi/ads/bq;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/bq$d;

    iget v4, v2, Lcom/inmobi/ads/bq$d;->a:I

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/bq$d;

    iget-object v2, v2, Lcom/inmobi/ads/bq$d;->c:Landroid/view/View;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq$d;

    iget-object v5, v0, Lcom/inmobi/ads/bq$d;->d:Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    invoke-static {v0}, Lcom/inmobi/ads/bq;->b(Lcom/inmobi/ads/bq;)Lcom/inmobi/ads/bq$a;

    move-result-object v0

    .line 302
    invoke-interface {v0, v2, v1, v4, v5}, Lcom/inmobi/ads/bq$a;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    .line 312
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    invoke-static {v0}, Lcom/inmobi/ads/bq;->c(Lcom/inmobi/ads/bq;)Lcom/inmobi/ads/bq$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v1, p0, Lcom/inmobi/ads/bq$b;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/inmobi/ads/bq$b;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/bq$c;->a(Ljava/util/List;Ljava/util/List;)V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/inmobi/ads/bq$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->b()V

    .line 323
    :cond_3
    return-void
.end method
