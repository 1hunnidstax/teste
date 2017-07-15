.class Lcom/inmobi/ads/AdUnit$3$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$3;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/inmobi/ads/AdUnit$3;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$3;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3$1;->c:Lcom/inmobi/ads/AdUnit$3;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$3$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/inmobi/ads/AdUnit$3$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 825
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$1;->c:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 826
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$1;->c:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$1;->c:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget v1, p0, Lcom/inmobi/ads/AdUnit$3$1;->b:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_0

    .line 829
    const-string v1, "int"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$3$1;->c:Lcom/inmobi/ads/AdUnit$3;

    iget-object v2, v2, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 830
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$1;->c:Lcom/inmobi/ads/AdUnit$3;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0
.end method
