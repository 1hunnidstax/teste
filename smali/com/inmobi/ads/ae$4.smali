.class Lcom/inmobi/ads/ae$4;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/inmobi/ads/ae$4;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/inmobi/ads/ae$4;->a:Landroid/view/View;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoView;

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/av;

    .line 263
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "didRequestFullScreen"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/inmobi/ads/ae$4;->b:Lcom/inmobi/ads/ae;

    invoke-static {v2}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/ae$4;->b:Lcom/inmobi/ads/ae;

    invoke-static {v2}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/inmobi/ads/aw;->b(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ae;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
