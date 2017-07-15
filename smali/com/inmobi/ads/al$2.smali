.class final Lcom/inmobi/ads/al$2;
.super Ljava/lang/Object;
.source "NativeV2DisplayAdTracker.java"

# interfaces
.implements Lcom/inmobi/ads/bq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/al$2;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 48
    instance-of v1, p4, Lcom/inmobi/ads/ai;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    check-cast p4, Lcom/inmobi/ads/ai;

    .line 52
    invoke-virtual {p4}, Lcom/inmobi/ads/ai;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/inmobi/ads/al$2;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/inmobi/ads/al$2;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/inmobi/ads/al$2;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 72
    invoke-virtual {p4}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->k()I

    move-result v1

    int-to-long v4, v1

    .line 73
    invoke-virtual {p4}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->l()I

    move-result v1

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 74
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    int-to-long v6, p3

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
