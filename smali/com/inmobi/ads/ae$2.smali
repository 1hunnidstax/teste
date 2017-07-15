.class Lcom/inmobi/ads/ae$2;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeStrandTimerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/as;Lcom/inmobi/ads/NativeStrandTimerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/as;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/as;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/inmobi/ads/ae$2;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$2;->a:Lcom/inmobi/ads/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/ae$2;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->c(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ae$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/inmobi/ads/ae$2;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->c(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ae$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$2;->a:Lcom/inmobi/ads/as;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/ae$b;->a(Lcom/inmobi/ads/as;)V

    .line 191
    :cond_0
    return-void
.end method
