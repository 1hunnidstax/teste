.class Lcom/moat/analytics/mobile/inm/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/inm/az;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/inm/az",
        "<",
        "Lcom/moat/analytics/mobile/inm/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/inm/ao;

.field final synthetic c:Lcom/moat/analytics/mobile/inm/v;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/v;Ljava/lang/ref/WeakReference;Lcom/moat/analytics/mobile/inm/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/x;->c:Lcom/moat/analytics/mobile/inm/v;

    iput-object p2, p0, Lcom/moat/analytics/mobile/inm/x;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/inm/x;->b:Lcom/moat/analytics/mobile/inm/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/inm/base/functional/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/inm/base/functional/a",
            "<",
            "Lcom/moat/analytics/mobile/inm/WebAdTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/x;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/x;->b:Lcom/moat/analytics/mobile/inm/ao;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/inm/ao;->b()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const-string v0, "MoatFactory"

    const-string v1, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a()Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "MoatFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating WebAdTracker for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/moat/analytics/mobile/inm/x;->c:Lcom/moat/analytics/mobile/inm/v;

    invoke-static {v2}, Lcom/moat/analytics/mobile/inm/v;->b(Lcom/moat/analytics/mobile/inm/v;)Lcom/moat/analytics/mobile/inm/bg;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/moat/analytics/mobile/inm/bg;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/inm/base/functional/a;->c()Z

    move-result v0

    if-eqz v1, :cond_3

    const-string v1, "MoatFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "found inside of ad container."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Lcom/moat/analytics/mobile/inm/be;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/moat/analytics/mobile/inm/base/functional/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/moat/analytics/mobile/inm/x;->c:Lcom/moat/analytics/mobile/inm/v;

    invoke-static {v2}, Lcom/moat/analytics/mobile/inm/v;->a(Lcom/moat/analytics/mobile/inm/v;)Lcom/moat/analytics/mobile/inm/a;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/inm/x;->b:Lcom/moat/analytics/mobile/inm/ao;

    invoke-direct {v1, v0, v2, v3}, Lcom/moat/analytics/mobile/inm/be;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/inm/a;Lcom/moat/analytics/mobile/inm/ao;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "not "

    goto :goto_1
.end method
