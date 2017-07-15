.class Lcom/moat/analytics/mobile/inm/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/inm/az;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/inm/az",
        "<",
        "Lcom/moat/analytics/mobile/inm/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/ao;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/moat/analytics/mobile/inm/v;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/v;Lcom/moat/analytics/mobile/inm/ao;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/z;->c:Lcom/moat/analytics/mobile/inm/v;

    iput-object p2, p0, Lcom/moat/analytics/mobile/inm/z;->a:Lcom/moat/analytics/mobile/inm/ao;

    iput-object p3, p0, Lcom/moat/analytics/mobile/inm/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/inm/base/functional/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/inm/base/functional/a",
            "<",
            "Lcom/moat/analytics/mobile/inm/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/z;->a:Lcom/moat/analytics/mobile/inm/ao;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatFactory"

    const-string v1, "Creating NativeVideo tracker."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/inm/ag;

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/z;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/moat/analytics/mobile/inm/z;->c:Lcom/moat/analytics/mobile/inm/v;

    invoke-static {v2}, Lcom/moat/analytics/mobile/inm/v;->a(Lcom/moat/analytics/mobile/inm/v;)Lcom/moat/analytics/mobile/inm/a;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/inm/z;->a:Lcom/moat/analytics/mobile/inm/ao;

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/inm/ag;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/inm/a;Lcom/moat/analytics/mobile/inm/ao;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v0

    return-object v0
.end method
