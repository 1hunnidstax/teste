.class Lcom/inmobi/ads/u;
.super Lcom/inmobi/ads/bm;
.source "InMobiTrackedNativeV2DisplayAd.java"


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

.field private final e:Lcom/inmobi/ads/al;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/ads/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/u;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ViewableAd;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/ViewableAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/inmobi/ads/bm;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/u;->c:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object p3, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    .line 27
    new-instance v0, Lcom/inmobi/ads/al;

    invoke-direct {v0}, Lcom/inmobi/ads/al;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/u;->e:Lcom/inmobi/ads/al;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 78
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
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/ads/u;->b()Landroid/view/View;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/inmobi/ads/u;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ai;

    .line 49
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/inmobi/ads/ai;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/inmobi/ads/u;->e:Lcom/inmobi/ads/al;

    invoke-virtual {v3, v0, v2, v1, p1}, Lcom/inmobi/ads/al;->a(Landroid/app/Activity;Landroid/view/View;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/c$h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 58
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/u;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    throw v0
.end method

.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/u;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 64
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/inmobi/ads/u;->e:Lcom/inmobi/ads/al;

    iget-object v1, p0, Lcom/inmobi/ads/u;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/inmobi/ads/al;->a(Landroid/app/Activity;Lcom/inmobi/ads/ai;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 73
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/u;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()V

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/inmobi/ads/bm;->d()V

    .line 83
    iget-object v0, p0, Lcom/inmobi/ads/u;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 84
    iget-object v0, p0, Lcom/inmobi/ads/u;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 85
    return-void
.end method
