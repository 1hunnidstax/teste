.class public Lcom/inmobi/ads/q;
.super Lcom/inmobi/ads/bm;
.source "IasTrackedHtmlAd.java"


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

.field private final e:Lcom/integralads/avid/library/inmobi/session/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/integralads/avid/library/inmobi/session/a",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/ads/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/q;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/integralads/avid/library/inmobi/session/a;Z)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ViewableAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/integralads/avid/library/inmobi/session/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/inmobi/ads/ViewableAd;",
            "Lcom/integralads/avid/library/inmobi/session/a",
            "<",
            "Landroid/webkit/WebView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/inmobi/ads/bm;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/q;->c:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p2, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    .line 31
    iput-object p3, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    .line 32
    iput-boolean p4, p0, Lcom/inmobi/ads/q;->f:Z

    .line 33
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 98
    return-void
.end method

.method public varargs a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    .locals 6
    .param p1    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/q;->b()Landroid/view/View;

    move-result-object v1

    .line 58
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 59
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/ads/c$h;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p2, v2

    .line 62
    iget-object v5, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    invoke-virtual {v5, v4}, Lcom/integralads/avid/library/inmobi/session/a;->b(Landroid/view/View;)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v2, v1, v0}, Lcom/integralads/avid/library/inmobi/session/a;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 66
    iget-boolean v0, p0, Lcom/inmobi/ads/q;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/a;->c()Lcom/integralads/avid/library/inmobi/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/a;->c()Lcom/integralads/avid/library/inmobi/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/c/a;->a_()V

    .line 69
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->b:Ljava/lang/String;

    const-string v2, "Registered ad view with AVID ad session"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 78
    :goto_1
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/q;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    throw v0
.end method

.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    invoke-virtual {p0}, Lcom/inmobi/ads/q;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/a;->a(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/inmobi/ads/q;->e:Lcom/integralads/avid/library/inmobi/session/a;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/a;->b()V

    .line 85
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/q;->b:Ljava/lang/String;

    const-string v2, "Unregistered WebView to IAS AdSession."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 93
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/q;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()V

    throw v0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 102
    invoke-super {p0}, Lcom/inmobi/ads/bm;->d()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/q;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 111
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/q;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in destroy with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/q;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method
