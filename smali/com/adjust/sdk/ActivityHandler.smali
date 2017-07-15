.class public Lcom/adjust/sdk/ActivityHandler;
.super Landroid/os/HandlerThread;
.source "ActivityHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IActivityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/ActivityHandler$SessionHandler;,
        Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;,
        Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    }
.end annotation


# static fields
.field private static final ACTIVITY_STATE_NAME:Ljava/lang/String; = "Activity state"

.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"

.field private static final ATTRIBUTION_NAME:Ljava/lang/String; = "Attribution"

.field private static SESSION_INTERVAL:J = 0x0L

.field private static SUBSESSION_INTERVAL:J = 0x0L

.field private static TIMER_INTERVAL:J = 0x0L

.field private static TIMER_START:J = 0x0L

.field private static final TIME_TRAVEL:Ljava/lang/String; = "Time travel!"


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private adjustConfig:Lcom/adjust/sdk/AdjustConfig;

.field private attribution:Lcom/adjust/sdk/AdjustAttribution;

.field private attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private deviceInfo:Lcom/adjust/sdk/DeviceInfo;

.field private enabled:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private offline:Z

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

.field private timer:Lcom/adjust/sdk/TimerCycle;


# direct methods
.method private constructor <init>(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 4
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    const/4 v3, 0x1

    .line 59
    const-string v1, "Adjust"

    invoke-direct {p0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/adjust/sdk/ActivityHandler;->setDaemon(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->start()V

    .line 63
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 64
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    .line 65
    iput-boolean v3, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 66
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 69
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bb7

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 70
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustAttribution;
    .locals 1
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;
    .locals 1
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->timerFiredInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->timerFired()V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->initInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->endInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adjust/sdk/ActivityHandler;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->finishedTrackingActivityInternal(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->sendReferrerInternal(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/ActivityHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateStatusInternal()V

    return-void
.end method

.method private buildQueryStringClickPackage(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;
    .locals 19
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "clickTime"    # J

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    const/4 v10, 0x0

    .line 627
    :goto_0
    return-object v10

    .line 598
    :cond_0
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 599
    .local v15, "queryStringParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v14, Lcom/adjust/sdk/AdjustAttribution;

    invoke-direct {v14}, Lcom/adjust/sdk/AdjustAttribution;-><init>()V

    .line 600
    .local v14, "queryStringAttribution":Lcom/adjust/sdk/AdjustAttribution;
    const/4 v11, 0x0

    .line 602
    .local v11, "hasAdjustTags":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v6, "Reading query string (%s) from %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object p1, v7, v17

    const/16 v17, 0x1

    aput-object p2, v7, v17

    invoke-interface {v5, v6, v7}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    const-string v5, "&"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 605
    .local v13, "queryPairs":[Ljava/lang/String;
    array-length v6, v13

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v12, v13, v5

    .line 606
    .local v12, "pair":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15, v14}, Lcom/adjust/sdk/ActivityHandler;->readQueryString(Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 607
    const/4 v11, 0x1

    .line 605
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 611
    .end local v12    # "pair":Ljava/lang/String;
    :cond_2
    if-nez v11, :cond_3

    .line 612
    const/4 v10, 0x0

    goto :goto_0

    .line 615
    :cond_3
    const-string v5, "reftag"

    invoke-interface {v15, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 617
    .local v16, "reftag":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 618
    .local v8, "now":J
    new-instance v4, Lcom/adjust/sdk/PackageBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v4 .. v9}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 619
    .local v4, "builder":Lcom/adjust/sdk/PackageBuilder;
    iput-object v15, v4, Lcom/adjust/sdk/PackageBuilder;->extraParameters:Ljava/util/Map;

    .line 620
    iput-object v14, v4, Lcom/adjust/sdk/PackageBuilder;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 621
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/adjust/sdk/PackageBuilder;->reftag:Ljava/lang/String;

    .line 622
    const-string v5, "reftag"

    move-object/from16 v0, p2

    if-ne v0, v5, :cond_4

    .line 623
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    .line 626
    :cond_4
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->buildClickPackage(Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v10

    .line 627
    .local v10, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    goto :goto_0
.end method

.method private checkActivityState(Lcom/adjust/sdk/ActivityState;)Z
    .locals 4
    .param p1, "activityState"    # Lcom/adjust/sdk/ActivityState;

    .prologue
    const/4 v0, 0x0

    .line 824
    if-nez p1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Missing activity state."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAttributionState()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v0, v0, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    if-eqz v0, :cond_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->getAttribution()V

    goto :goto_0
.end method

.method private checkEvent(Lcom/adjust/sdk/AdjustEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    const/4 v0, 0x0

    .line 810
    if-nez p1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Event missing"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    :goto_0
    return v0

    .line 815
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustEvent;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Event not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 820
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static deleteActivityState(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 741
    const-string v0, "AdjustIoActivityState"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deleteAttribution(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 745
    const-string v0, "AdjustAttribution"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private endInternal()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    .line 527
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->pauseSending()V

    .line 528
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 532
    :cond_0
    return-void
.end method

.method private finishedTrackingActivityInternal(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_0
    const-string v1, "deeplink"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "deeplink":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->launchDeeplinkMain(Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v1, p1}, Lcom/adjust/sdk/IAttributionHandler;->checkAttribution(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;
    .locals 9
    .param p0, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 80
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    const-string v5, "AdjustConfig missing"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/AdjustConfig;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    const-string v5, "AdjustConfig not initialized correctly"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v4, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 91
    .local v1, "currentPid":I
    iget-object v4, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 93
    .local v2, "manager":Landroid/app/ActivityManager;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 98
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_3

    .line 99
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 100
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v4

    const-string v5, "Skipping initialization in background process (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    .end local v1    # "currentPid":I
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    new-instance v0, Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler;-><init>(Lcom/adjust/sdk/AdjustConfig;)V

    .line 109
    .local v0, "activityHandler":Lcom/adjust/sdk/ActivityHandler;
    goto :goto_0
.end method

.method private hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "previousState"    # Z
    .param p2, "newState"    # Z
    .param p3, "trueMessage"    # Ljava/lang/String;
    .param p4, "falseMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 192
    if-eq p1, p2, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    .line 196
    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v1, p4, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initInternal()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 397
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    .line 398
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerStart()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_START:J

    .line 399
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    .line 400
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    .line 402
    new-instance v0, Lcom/adjust/sdk/DeviceInfo;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->sdkPrefix:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/DeviceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    .line 404
    const-string v0, "production"

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    sget-object v1, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Event buffering is enabled"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "playAdId":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 416
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Unable to get Google Play Services Advertising ID at start time"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Default tracker: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-wide v2, v1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    .line 427
    :cond_3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readAttribution()V

    .line 428
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readActivityState()V

    .line 430
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 432
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v6

    .line 435
    .local v6, "attributionPackage":Lcom/adjust/sdk/ActivityPackage;
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    .line 436
    invoke-virtual {v1}, Lcom/adjust/sdk/AdjustConfig;->hasListener()Z

    move-result v1

    .line 433
    invoke-static {p0, v6, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)Lcom/adjust/sdk/IAttributionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 438
    new-instance v0, Lcom/adjust/sdk/TimerCycle;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$2;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    sget-wide v2, Lcom/adjust/sdk/ActivityHandler;->TIMER_START:J

    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/TimerCycle;-><init>(Ljava/lang/Runnable;JJ)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->timer:Lcom/adjust/sdk/TimerCycle;

    .line 444
    return-void

    .line 407
    .end local v6    # "attributionPackage":Lcom/adjust/sdk/ActivityPackage;
    .end local v7    # "playAdId":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->logLevel:Lcom/adjust/sdk/LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/ILogger;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto/16 :goto_0
.end method

.method private launchAttributionListener()V
    .locals 3

    .prologue
    .line 262
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$1;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$1;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    .line 272
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private launchDeeplinkMain(Ljava/lang/String;)V
    .locals 9
    .param p1, "deeplink"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 700
    if-nez p1, :cond_0

    .line 719
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 703
    .local v2, "location":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 704
    .local v3, "mapIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 707
    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v7, v7, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 708
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 709
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    move v1, v5

    .line 712
    .local v1, "isIntentSafe":Z
    :goto_1
    if-nez v1, :cond_2

    .line 713
    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v8, "Unable to open deep link (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-interface {v7, v8, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "isIntentSafe":Z
    :cond_1
    move v1, v6

    .line 709
    goto :goto_1

    .line 717
    .restart local v1    # "isIntentSafe":Z
    :cond_2
    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v8, "Open deep link (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-interface {v7, v8, v5}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, v5, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private paused()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->offline:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processSession()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 466
    .local v2, "now":J
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v4, :cond_1

    .line 467
    new-instance v4, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v4}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 468
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput v9, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 470
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage(J)V

    .line 471
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v4, v2, v3}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 472
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v5, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    iput-boolean v5, v4, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 473
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v4, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, v2, v4

    .line 479
    .local v0, "lastInterval":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 480
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v5, "Time travel!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 482
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 487
    :cond_2
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 488
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 489
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v4, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 491
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage(J)V

    .line 492
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v4, v2, v3}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 493
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 498
    :cond_3
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 499
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 500
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v6, v0

    iput-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 501
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 502
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 503
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v5, "Started subsession %d of session %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v7, v7, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 504
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v7, v7, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 505
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 503
    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readActivityState()V
    .locals 6

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v2, "AdjustIoActivityState"

    const-string v3, "Activity state"

    invoke-static {v1, v2, v3}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/ActivityState;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Activity state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    goto :goto_0
.end method

.method private readAttribution()V
    .locals 6

    .prologue
    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v2, "AdjustAttribution"

    const-string v3, "Attribution"

    invoke-static {v1, v2, v3}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/AdjustAttribution;

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Failed to read %s file (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Attribution"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    goto :goto_0
.end method

.method private readOpenUrlInternal(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "clickTime"    # J

    .prologue
    .line 579
    if-nez p1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "queryString":Ljava/lang/String;
    const-string v2, "deeplink"

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->buildQueryStringClickPackage(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 586
    .local v0, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    if-eqz v0, :cond_0

    .line 590
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v2, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private readQueryString(Ljava/lang/String;Ljava/util/Map;Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 8
    .param p1, "queryString"    # Ljava/lang/String;
    .param p3, "queryStringAttribution"    # Lcom/adjust/sdk/AdjustAttribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adjust/sdk/AdjustAttribution;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 633
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "pairComponents":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v4

    .line 636
    :cond_1
    aget-object v0, v2, v4

    .line 637
    .local v0, "key":Ljava/lang/String;
    const-string v6, "adjust_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 639
    aget-object v3, v2, v5

    .line 640
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 642
    const-string v6, "adjust_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "keyWOutPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    invoke-direct {p0, p3, v1, v3}, Lcom/adjust/sdk/ActivityHandler;->trySetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 646
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v4, v5

    .line 649
    goto :goto_0
.end method

.method private saveAttribution(Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0
    .param p1, "attribution"    # Lcom/adjust/sdk/AdjustAttribution;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 258
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeAttribution()V

    .line 259
    return-void
.end method

.method private sendReferrerInternal(Ljava/lang/String;J)V
    .locals 2
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "clickTime"    # J

    .prologue
    .line 568
    const-string v1, "reftag"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->buildQueryStringClickPackage(Ljava/lang/String;Ljava/lang/String;J)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 571
    .local v0, "clickPackage":Lcom/adjust/sdk/ActivityPackage;
    if-nez v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private startInternal()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateStatusInternal()V

    .line 455
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processSession()V

    .line 457
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkAttributionState()V

    .line 459
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startTimer()V

    goto :goto_0
.end method

.method private startTimer()V
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->timer:Lcom/adjust/sdk/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerCycle;->start()V

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->timer:Lcom/adjust/sdk/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerCycle;->suspend()V

    .line 766
    return-void
.end method

.method private timerFired()V
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bbf

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 329
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    return-void
.end method

.method private timerFiredInternal()V
    .locals 3

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Session timer fired"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method private trackEventInternal(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 535
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkEvent(Lcom/adjust/sdk/AdjustEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 541
    .local v4, "now":J
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v2, v1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 542
    invoke-direct {p0, v4, v5}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)Z

    .line 544
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 545
    .local v0, "eventBuilder":Lcom/adjust/sdk/PackageBuilder;
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->buildEventPackage(Lcom/adjust/sdk/AdjustEvent;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v6

    .line 546
    .local v6, "eventPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v6}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 548
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Buffered event %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private transferSessionPackage(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 749
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 750
    .local v0, "builder":Lcom/adjust/sdk/PackageBuilder;
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v6

    .line 751
    .local v6, "sessionPackage":Lcom/adjust/sdk/ActivityPackage;
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v6}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 752
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 753
    return-void
.end method

.method private trySetAttribution(Lcom/adjust/sdk/AdjustAttribution;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "queryStringAttribution"    # Lcom/adjust/sdk/AdjustAttribution;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 655
    const-string v1, "tracker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 675
    :goto_0
    return v0

    .line 660
    :cond_0
    const-string v1, "campaign"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 661
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    goto :goto_0

    .line 665
    :cond_1
    const-string v1, "adgroup"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    goto :goto_0

    .line 670
    :cond_2
    const-string v1, "creative"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    iput-object p3, p1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    goto :goto_0

    .line 675
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActivityState(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v3}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 737
    :cond_0
    :goto_0
    return v2

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v3, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, p1, v4

    .line 726
    .local v0, "lastInterval":J
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 729
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v3, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 731
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 732
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "Time travel!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 734
    :cond_2
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 735
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    goto :goto_1
.end method

.method private updateAttributionHandlerStatus()V
    .locals 1

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->pauseSending()V

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->resumeSending()V

    goto :goto_0
.end method

.method private updatePackageHandlerStatus()V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    .line 697
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->resumeSending()V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bbe

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 323
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-void
.end method

.method private updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pausingState"    # Z
    .param p2, "pausingMessage"    # Ljava/lang/String;
    .param p3, "remainsPausedMessage"    # Ljava/lang/String;
    .param p4, "unPausingMessage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionEnd()V

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->paused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p4, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    goto :goto_0
.end method

.method private updateStatusInternal()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateAttributionHandlerStatus()V

    .line 680
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updatePackageHandlerStatus()V

    .line 681
    return-void
.end method

.method private declared-synchronized writeActivityState()V
    .locals 4

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v2, "AdjustIoActivityState"

    const-string v3, "Activity state"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    monitor-exit p0

    return-void

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeAttribution()V
    .locals 4

    .prologue
    .line 806
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v2, "AdjustAttribution"

    const-string v3, "Attribution"

    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void
.end method


# virtual methods
.method public finishedTrackingActivity(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bbb

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 146
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public getAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 6

    .prologue
    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 284
    .local v4, "now":J
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct/range {v0 .. v5}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;J)V

    .line 288
    .local v0, "attributionBuilder":Lcom/adjust/sdk/PackageBuilder;
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildAttributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    return-object v1
.end method

.method public init(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 0
    .param p1, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    .line 76
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 230
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    goto :goto_0
.end method

.method public readOpenUrl(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "clickTime"    # J

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "message":Landroid/os/Message;
    const v2, 0x11bbc

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 238
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$UrlClickTime;-><init>(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;J)V

    .line 239
    .local v1, "urlClickTime":Lcom/adjust/sdk/ActivityHandler$UrlClickTime;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v2, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    return-void
.end method

.method public sendReferrer(Ljava/lang/String;J)V
    .locals 4
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "clickTime"    # J

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "message":Landroid/os/Message;
    const v2, 0x11bbd

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 295
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;J)V

    .line 296
    .local v1, "referrerClickTime":Lcom/adjust/sdk/ActivityHandler$ReferrerClickTime;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v2, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method

.method public setAskingAttribution(Z)V
    .locals 1
    .param p1, "askingAttribution"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 278
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 279
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    const-string v1, "Adjust already enabled"

    const-string v2, "Adjust already disabled"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 159
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 166
    :goto_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_2
    const-string v1, "Pausing package handler and attribution handler to disable the SDK"

    const-string v2, "Package and attribution handler remain paused due to the SDK is offline"

    const-string v3, "Resuming package handler and attribution handler to enabled the SDK"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 163
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_1

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setOfflineMode(Z)V
    .locals 3
    .param p1, "offline"    # Z

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->offline:Z

    const-string v1, "Adjust already in offline mode"

    const-string v2, "Adjust already in online mode"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedState(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 213
    :cond_0
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->offline:Z

    .line 215
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 219
    :cond_1
    const-string v0, "Pausing package and attribution handler to put in offline mode"

    const-string v1, "Package and attribution handler remain paused because the SDK is disabled"

    const-string v2, "Resuming package handler and attribution handler to put in online mode"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->updateStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bba

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 134
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public trackSubsessionEnd()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bb9

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 123
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method public trackSubsessionStart()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11bb8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 116
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public tryUpdateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 2
    .param p1, "attribution"    # Lcom/adjust/sdk/AdjustAttribution;

    .prologue
    const/4 v0, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p1, v1}, Lcom/adjust/sdk/AdjustAttribution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->saveAttribution(Lcom/adjust/sdk/AdjustAttribution;)V

    .line 252
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListener()V

    .line 253
    const/4 v0, 0x1

    goto :goto_0
.end method
