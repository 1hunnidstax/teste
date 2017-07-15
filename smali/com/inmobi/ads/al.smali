.class public Lcom/inmobi/ads/al;
.super Ljava/lang/Object;
.source "NativeV2DisplayAdTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final a:Lcom/inmobi/ads/bq$a;

.field private static final b:Ljava/lang/String;

.field private static final e:Lcom/inmobi/ads/t$a;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/t;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/inmobi/ads/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/al;->b:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/inmobi/ads/al$1;

    invoke-direct {v0}, Lcom/inmobi/ads/al$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/al;->e:Lcom/inmobi/ads/t$a;

    .line 39
    new-instance v0, Lcom/inmobi/ads/al$2;

    invoke-direct {v0}, Lcom/inmobi/ads/al$2;-><init>()V

    sput-object v0, Lcom/inmobi/ads/al;->a:Lcom/inmobi/ads/bq$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/c$h;)Lcom/inmobi/ads/t;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/inmobi/ads/t;

    new-instance v1, Lcom/inmobi/ads/p;

    sget-object v2, Lcom/inmobi/ads/al;->a:Lcom/inmobi/ads/bq$a;

    invoke-direct {v1, v2, p1}, Lcom/inmobi/ads/p;-><init>(Lcom/inmobi/ads/bq$a;Landroid/app/Activity;)V

    sget-object v2, Lcom/inmobi/ads/al;->e:Lcom/inmobi/ads/t$a;

    invoke-direct {v0, p3, v1, v2}, Lcom/inmobi/ads/t;-><init>(Lcom/inmobi/ads/c$h;Lcom/inmobi/ads/bq;Lcom/inmobi/ads/t$a;)V

    .line 109
    iget-object v1, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/inmobi/ads/al;->d:Z

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/al;->d:Z

    .line 116
    :cond_0
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->e()V

    .line 125
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/ads/al;->d:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/al;->d:Z

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Landroid/view/View;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/c$h;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    .line 83
    invoke-direct {p0, p1, p3, p4}, Lcom/inmobi/ads/al;->a(Landroid/app/Activity;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/c$h;)Lcom/inmobi/ads/t;

    move-result-object v0

    .line 85
    invoke-virtual {p4}, Lcom/inmobi/ads/c$h;->a()I

    move-result v1

    .line 86
    invoke-virtual {p4}, Lcom/inmobi/ads/c$h;->b()I

    move-result v2

    .line 84
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/inmobi/ads/t;->a(Landroid/view/View;Ljava/lang/Object;II)V

    .line 87
    return-void
.end method

.method a(Landroid/app/Activity;Lcom/inmobi/ads/ai;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/t;->a(Ljava/lang/Object;)Landroid/view/View;

    .line 93
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/al;->b:Ljava/lang/String;

    const-string v2, "Impression tracker is free, removing it"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/inmobi/ads/al;->a(Landroid/app/Activity;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 162
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/al;->b:Ljava/lang/String;

    const-string v2, "Activity destroyed, removing impression tracker"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/inmobi/ads/al;->a(Landroid/app/Activity;)V

    .line 164
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->b()V

    .line 141
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/inmobi/ads/al;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()V

    .line 155
    :cond_0
    return-void
.end method
