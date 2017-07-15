.class Lcom/inmobi/ads/au$3;
.super Ljava/lang/Object;
.source "NativeV2VideoAdTracker.java"

# interfaces
.implements Lcom/inmobi/ads/bq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/au;->b(Landroid/app/Activity;Lcom/inmobi/ads/at;)Lcom/inmobi/ads/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/at;

.field final synthetic b:Lcom/inmobi/ads/au;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/au;Lcom/inmobi/ads/at;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/inmobi/ads/au$3;->b:Lcom/inmobi/ads/au;

    iput-object p2, p0, Lcom/inmobi/ads/au$3;->a:Lcom/inmobi/ads/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7fffffff

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoView;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    iget-object v2, p0, Lcom/inmobi/ads/au$3;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v2}, Lcom/inmobi/ads/at;->v()Lcom/inmobi/ads/at$b;

    move-result-object v2

    const/4 v3, 0x1

    .line 195
    invoke-interface {v2, v0, v3}, Lcom/inmobi/ads/at$b;->a(Lcom/inmobi/ads/NativeStrandVideoView;Z)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 202
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoView;

    .line 203
    if-eqz v0, :cond_2

    .line 204
    iget-object v2, p0, Lcom/inmobi/ads/au$3;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v2}, Lcom/inmobi/ads/at;->v()Lcom/inmobi/ads/at$b;

    move-result-object v2

    const/4 v3, 0x0

    .line 205
    invoke-interface {v2, v0, v3}, Lcom/inmobi/ads/at$b;->a(Lcom/inmobi/ads/NativeStrandVideoView;Z)V

    goto :goto_1

    .line 208
    :cond_3
    return-void
.end method
