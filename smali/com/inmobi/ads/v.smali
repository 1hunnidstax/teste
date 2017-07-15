.class Lcom/inmobi/ads/v;
.super Lcom/inmobi/ads/bm;
.source "InMobiTrackedNativeV2VideoAd.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/inmobi/ads/ViewableAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/inmobi/ads/au;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/v;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/at;Lcom/inmobi/ads/ViewableAd;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/ViewableAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/inmobi/ads/bm;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/ref/WeakReference;

    .line 34
    iput-object p3, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    .line 35
    new-instance v0, Lcom/inmobi/ads/au;

    invoke-direct {v0}, Lcom/inmobi/ads/au;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/v;->e:Lcom/inmobi/ads/au;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 42
    iget-object v1, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 44
    iget-object v3, p0, Lcom/inmobi/ads/v;->e:Lcom/inmobi/ads/au;

    .line 45
    invoke-virtual {p0}, Lcom/inmobi/ads/v;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/at;

    .line 44
    invoke-virtual {v3, v0, v2, v1}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;Landroid/view/View;Lcom/inmobi/ads/at;)V

    .line 47
    :cond_0
    return-object v2
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 4

    .prologue
    .line 97
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/v;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 99
    return-void
.end method

.method public varargs a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/v;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/at;

    .line 62
    invoke-virtual {v0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 63
    iget-object v2, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 64
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    .line 66
    iget-object v3, p0, Lcom/inmobi/ads/v;->e:Lcom/inmobi/ads/au;

    invoke-virtual {v3, v2, v1, v0, p1}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;Landroid/view/View;Lcom/inmobi/ads/at;Lcom/inmobi/ads/c$h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 75
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    throw v0
.end method

.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 81
    invoke-virtual {p0}, Lcom/inmobi/ads/v;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/at;

    .line 82
    invoke-virtual {v1}, Lcom/inmobi/ads/at;->c()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/inmobi/ads/v;->e:Lcom/inmobi/ads/au;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;Lcom/inmobi/ads/at;)V

    .line 84
    iget-object v2, p0, Lcom/inmobi/ads/v;->e:Lcom/inmobi/ads/au;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;Lcom/inmobi/ads/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 93
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/v;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()V

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/inmobi/ads/bm;->d()V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/v;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 106
    return-void
.end method
