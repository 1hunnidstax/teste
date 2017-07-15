.class Lcom/moat/analytics/mobile/inm/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/aq;

.field final synthetic b:Lcom/moat/analytics/mobile/inm/au;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/au;Lcom/moat/analytics/mobile/inm/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/av;->b:Lcom/moat/analytics/mobile/inm/au;

    iput-object p2, p0, Lcom/moat/analytics/mobile/inm/av;->a:Lcom/moat/analytics/mobile/inm/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/av;->b:Lcom/moat/analytics/mobile/inm/au;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/au;->a(Lcom/moat/analytics/mobile/inm/au;)Lcom/moat/analytics/mobile/inm/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/av;->a:Lcom/moat/analytics/mobile/inm/aq;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/aw;->a(Lcom/moat/analytics/mobile/inm/aq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
