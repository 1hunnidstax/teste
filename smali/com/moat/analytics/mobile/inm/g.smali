.class Lcom/moat/analytics/mobile/inm/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/f;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/f;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/g;->a:Lcom/moat/analytics/mobile/inm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/g;->a:Lcom/moat/analytics/mobile/inm/f;

    const-string v1, "Shutting down."

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/inm/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/g;->a:Lcom/moat/analytics/mobile/inm/f;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/f;->a(Lcom/moat/analytics/mobile/inm/f;)Lcom/moat/analytics/mobile/inm/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/ac;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/g;->a:Lcom/moat/analytics/mobile/inm/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/inm/f;->a(Lcom/moat/analytics/mobile/inm/f;Lcom/moat/analytics/mobile/inm/ac;)Lcom/moat/analytics/mobile/inm/ac;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
