.class Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/events/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundForegroundDetector"
.end annotation


# instance fields
.field private activeActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miniclip/events/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/miniclip/events/EventDispatcher;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->this$0:Lcom/miniclip/events/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->activeActivities:Ljava/util/Set;

    .line 71
    iget-object v0, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->activeActivities:Ljava/util/Set;

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->activeActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    # invokes: Lcom/miniclip/events/EventDispatcher;->onAppEnterForegroundNative()V
    invoke-static {}, Lcom/miniclip/events/EventDispatcher;->access$000()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->activeActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->activeActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/miniclip/events/EventDispatcher$BackgroundForegroundDetector;->activeActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    # invokes: Lcom/miniclip/events/EventDispatcher;->onAppEnterBackgroundNative()V
    invoke-static {}, Lcom/miniclip/events/EventDispatcher;->access$100()V

    .line 97
    :cond_0
    return-void
.end method
