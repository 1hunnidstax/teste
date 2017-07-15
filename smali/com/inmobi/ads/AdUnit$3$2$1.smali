.class Lcom/inmobi/ads/AdUnit$3$2$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$3$2;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$3$2;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$3$2;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3$2$1;->a:Lcom/inmobi/ads/AdUnit$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2$1;->a:Lcom/inmobi/ads/AdUnit$3$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 898
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2$1;->a:Lcom/inmobi/ads/AdUnit$3$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    .line 899
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2$1;->a:Lcom/inmobi/ads/AdUnit$3$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2$1;->a:Lcom/inmobi/ads/AdUnit$3$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget v1, v1, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->b(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_0

    .line 901
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->e()V

    .line 903
    :cond_0
    return-void
.end method
