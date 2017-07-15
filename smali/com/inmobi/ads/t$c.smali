.class Lcom/inmobi/ads/t$c;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
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

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/t;)V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/t$c;->a:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/t$c;->b:Ljava/lang/ref/WeakReference;

    .line 232
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 237
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 238
    if-eqz v0, :cond_3

    .line 239
    invoke-static {v0}, Lcom/inmobi/ads/t;->b(Lcom/inmobi/ads/t;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/t$b;

    .line 243
    iget-wide v4, v1, Lcom/inmobi/ads/t$b;->d:J

    iget v6, v1, Lcom/inmobi/ads/t$b;->c:I

    invoke-static {v4, v5, v6}, Lcom/inmobi/ads/t;->a(JI)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/inmobi/ads/t$c;->b:Ljava/lang/ref/WeakReference;

    .line 244
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 245
    invoke-static {v0}, Lcom/inmobi/ads/t;->c(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$a;

    move-result-object v4

    iget-object v1, v1, Lcom/inmobi/ads/t$b;->a:Ljava/lang/Object;

    invoke-interface {v4, v2, v1}, Lcom/inmobi/ads/t$a;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/inmobi/ads/t$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/t$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 253
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/t$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 256
    invoke-static {v0}, Lcom/inmobi/ads/t;->b(Lcom/inmobi/ads/t;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 257
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->f()V

    .line 260
    :cond_3
    return-void
.end method
