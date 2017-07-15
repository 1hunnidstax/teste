.class Lcom/inmobi/ads/ad$2;
.super Ljava/lang/Object;
.source "NativeStrandDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ad;->a(ILandroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/inmobi/ads/aj;

.field final synthetic e:Lcom/inmobi/ads/ad;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ad;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/inmobi/ads/ad$2;->e:Lcom/inmobi/ads/ad;

    iput p2, p0, Lcom/inmobi/ads/ad$2;->a:I

    iput-object p3, p0, Lcom/inmobi/ads/ad$2;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/inmobi/ads/ad$2;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/inmobi/ads/ad$2;->d:Lcom/inmobi/ads/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inmobi/ads/ad$2;->e:Lcom/inmobi/ads/ad;

    invoke-static {v0}, Lcom/inmobi/ads/ad;->b(Lcom/inmobi/ads/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ad$2;->e:Lcom/inmobi/ads/ad;

    invoke-static {v0}, Lcom/inmobi/ads/ad;->c(Lcom/inmobi/ads/ad;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/ad$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/inmobi/ads/ad$2;->e:Lcom/inmobi/ads/ad;

    invoke-static {v0}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/ad;)Lcom/inmobi/ads/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ad$2;->b:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/inmobi/ads/ad$2;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/inmobi/ads/ad$2;->d:Lcom/inmobi/ads/aj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ae;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;

    goto :goto_0
.end method
