.class Lcom/moat/analytics/mobile/inm/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/inm/ap;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/ax;

.field private b:J


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/ax;)V
    .locals 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/ay;->a:Lcom/moat/analytics/mobile/inm/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/inm/ay;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ay;->a:Lcom/moat/analytics/mobile/inm/ax;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/ax;->a(Lcom/moat/analytics/mobile/inm/ax;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ay;->a:Lcom/moat/analytics/mobile/inm/ax;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/ax;->b(Lcom/moat/analytics/mobile/inm/ax;)Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/moat/analytics/mobile/inm/ay;->b:J

    return-wide v0
.end method
