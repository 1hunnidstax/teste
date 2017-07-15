.class Lcom/inmobi/ads/at$1;
.super Ljava/lang/Object;
.source "NativeV2VideoAdContainer.java"

# interfaces
.implements Lcom/inmobi/ads/AdContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/at;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/at;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdScreenDisplayFailed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->a()V

    .line 104
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    iget-object v0, v0, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    iget-object v0, v0, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdScreenDisplayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    check-cast p1, Lcom/inmobi/ads/av;

    .line 116
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "shouldAutoPlay"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "shouldAutoPlay"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_2
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v1}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_ENTER_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 136
    sget-object v0, Lcom/inmobi/ads/ah$a;->n:Lcom/inmobi/ads/ah$a;

    iget-object v1, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    .line 137
    invoke-static {v1, p1}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/at;Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->b()V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 147
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdScreenDismissed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    check-cast p1, Lcom/inmobi/ads/av;

    .line 150
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 157
    :cond_0
    invoke-virtual {p1, v4}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 159
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_EXIT_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 161
    sget-object v0, Lcom/inmobi/ads/ah$a;->o:Lcom/inmobi/ads/ah$a;

    iget-object v1, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    .line 162
    invoke-static {v1, p1}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/at;Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    .line 161
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->e()V

    .line 170
    :cond_1
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/at$1;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLOSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method
