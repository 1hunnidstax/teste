.class Lcom/inmobi/ads/au;
.super Ljava/lang/Object;
.source "NativeV2VideoAdTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final e:Lcom/inmobi/ads/t$a;

.field private static final f:Lcom/inmobi/ads/bq$a;


# instance fields
.field private final b:Ljava/util/Map;
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

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/bq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/ads/au;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/au;->a:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/inmobi/ads/au$1;

    invoke-direct {v0}, Lcom/inmobi/ads/au$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/au;->e:Lcom/inmobi/ads/t$a;

    .line 52
    new-instance v0, Lcom/inmobi/ads/au$2;

    invoke-direct {v0}, Lcom/inmobi/ads/au$2;-><init>()V

    sput-object v0, Lcom/inmobi/ads/au;->f:Lcom/inmobi/ads/bq$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/au;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/inmobi/ads/c$h;)Lcom/inmobi/ads/t;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 133
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/inmobi/ads/t;

    new-instance v1, Lcom/inmobi/ads/p;

    sget-object v2, Lcom/inmobi/ads/au;->f:Lcom/inmobi/ads/bq$a;

    invoke-direct {v1, v2, p1}, Lcom/inmobi/ads/p;-><init>(Lcom/inmobi/ads/bq$a;Landroid/app/Activity;)V

    sget-object v2, Lcom/inmobi/ads/au;->e:Lcom/inmobi/ads/t$a;

    invoke-direct {v0, p2, v1, v2}, Lcom/inmobi/ads/t;-><init>(Lcom/inmobi/ads/c$h;Lcom/inmobi/ads/bq;Lcom/inmobi/ads/t$a;)V

    .line 137
    iget-object v1, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/inmobi/ads/au;->d:Z

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/au;->d:Z

    .line 145
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
    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->e()V

    .line 154
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    .line 155
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/ads/au;->d:Z

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/au;->d:Z

    .line 159
    :cond_1
    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/inmobi/ads/at;)Lcom/inmobi/ads/bq;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/inmobi/ads/au;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/inmobi/ads/p;

    sget-object v1, Lcom/inmobi/ads/al;->a:Lcom/inmobi/ads/bq$a;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/ads/p;-><init>(Lcom/inmobi/ads/bq$a;Landroid/app/Activity;)V

    .line 186
    new-instance v1, Lcom/inmobi/ads/au$3;

    invoke-direct {v1, p0, p2}, Lcom/inmobi/ads/au$3;-><init>(Lcom/inmobi/ads/au;Lcom/inmobi/ads/at;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/bq;->a(Lcom/inmobi/ads/bq$c;)V

    .line 210
    iget-object v1, p0, Lcom/inmobi/ads/au;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/inmobi/ads/au;->d:Z

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/au;->d:Z

    .line 217
    :cond_0
    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/au;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->e()V

    .line 226
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/au;->c:Ljava/util/Map;

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/ads/au;->d:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/au;->d:Z

    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;Landroid/view/View;Lcom/inmobi/ads/at;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    invoke-direct {p0, p1, p3}, Lcom/inmobi/ads/au;->b(Landroid/app/Activity;Lcom/inmobi/ads/at;)Lcom/inmobi/ads/bq;

    move-result-object v0

    .line 165
    const/16 v1, 0x43

    invoke-virtual {v0, p2, p3, v1}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 166
    return-void
.end method

.method a(Landroid/app/Activity;Landroid/view/View;Lcom/inmobi/ads/at;Lcom/inmobi/ads/c$h;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-virtual {p3}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v0, v1, :cond_0

    .line 107
    invoke-direct {p0, p1, p4}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;Lcom/inmobi/ads/c$h;)Lcom/inmobi/ads/t;

    move-result-object v0

    .line 109
    invoke-virtual {p4}, Lcom/inmobi/ads/c$h;->c()I

    move-result v1

    .line 110
    invoke-virtual {p4}, Lcom/inmobi/ads/c$h;->d()I

    move-result v2

    .line 108
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/inmobi/ads/t;->a(Landroid/view/View;Ljava/lang/Object;II)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/au;->a:Ljava/lang/String;

    const-string v2, "Infeed video is currently not checked for viewability. Impression beacon is fired on video play"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 169
    iget-object v0, p0, Lcom/inmobi/ads/au;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/bq;->a(Ljava/lang/Object;)Landroid/view/View;

    .line 172
    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/au;->a:Ljava/lang/String;

    const-string v2, "Impression tracker is free, removing it"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/inmobi/ads/au;->b(Landroid/app/Activity;)V

    .line 177
    :cond_0
    return-void
.end method

.method a(Landroid/app/Activity;Lcom/inmobi/ads/at;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/t;->a(Ljava/lang/Object;)Landroid/view/View;

    .line 121
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/au;->a:Ljava/lang/String;

    const-string v2, "Impression tracker is free, removing it"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 267
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/au;->a:Ljava/lang/String;

    const-string v2, "Activity destroyed, removing impression tracker"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/inmobi/ads/au;->a(Landroid/app/Activity;)V

    .line 269
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->b()V

    .line 243
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/inmobi/ads/au;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()V

    .line 259
    :cond_0
    return-void
.end method
