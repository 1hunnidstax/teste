.class public final Lcom/fyber/mediation/MediationAdapterStarter;
.super Ljava/lang/Object;
.source "MediationAdapterStarter.java"


# static fields
.field public static final ADAPTER_VERSION:Ljava/lang/String; = "ADAPTER_VERSION"

.field public static final FYBER_STARTED:Ljava/lang/String; = "FYBER_STARTED"

.field private static final TAG:Ljava/lang/String; = "MediationAdapterStarter"

.field public static adaptersListener:Lcom/fyber/mediation/AdaptersListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdaptersCount()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x6

    return v0
.end method

.method private static getConfigs(Ljava/util/concurrent/Future;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "futureConfig":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-static {}, Lcom/fyber/mediation/MediationConfigProvider;->getConfigs()Ljava/util/Map;

    move-result-object v0

    .line 169
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/fyber/mediation/MediationConfigProvider;->getRuntimeConfigs()Ljava/util/Map;

    move-result-object v2

    .line 170
    .local v2, "runtimeConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v2, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->mergeConfigs(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 172
    if-eqz p0, :cond_0

    .line 173
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 174
    .local v3, "serverConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v0, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->mergeConfigs(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 179
    .end local v3    # "serverConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "MediationAdapterStarter"

    const-string v5, "Exception occurred"

    invoke-static {v4, v5, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "adapter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .restart local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    return-object v0
.end method

.method private static mergeConfigs(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "fromConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p1, "intoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .local v3, "network":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 187
    .local v0, "adapterFromConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 188
    .local v1, "adapterIntoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "adapterIntoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 191
    .restart local v1    # "adapterIntoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    :cond_1
    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    .end local v0    # "adapterFromConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "adapterIntoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "network":Ljava/lang/String;
    :cond_2
    const-string v4, "MediationAdapterStarter"

    const-string v5, "There were no configurations to override"

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3
    return-object p1
.end method

.method private static startAdColony(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const/4 v1, 0x0

    .line 89
    .local v1, "adapterStartedSuccessfully":Z
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;-><init>()V

    .line 90
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v3, "ADAPTER_VERSION"

    const-string v4, "3.1.2-r1"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Starting adapter AdColony with version 3.1.2-r1"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter AdColony with version 3.1.2-r1 was started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "adcolony"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return v1

    .line 97
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter AdColony with version 3.1.2-r1 was not started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MediationAdapterStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while loading adapter AdColony with version 3.1.2-r1 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startAdapters(Landroid/app/Activity;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const-string v1, "Inmobi"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "FYBER_STARTED"

    const-string v3, "Inmobi"

    invoke-static {p1, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startInmobi(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "Vungle"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "FYBER_STARTED"

    const-string v3, "Vungle"

    invoke-static {p1, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startVungle(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "AppLovin"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "FYBER_STARTED"

    const-string v3, "AppLovin"

    invoke-static {p1, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startAppLovin(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "AdColony"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "FYBER_STARTED"

    const-string v3, "AdColony"

    invoke-static {p1, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startAdColony(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "Tapjoy"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "FYBER_STARTED"

    const-string v3, "Tapjoy"

    invoke-static {p1, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startTapjoy(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "Applifier"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "FYBER_STARTED"

    const-string v3, "Applifier"

    invoke-static {p1, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startApplifier(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object v0
.end method

.method public static startAdapters(Landroid/app/Activity;Ljava/util/concurrent/Future;)Ljava/util/Map;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-static {p1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigs(Ljava/util/concurrent/Future;)Ljava/util/Map;

    move-result-object v1

    .line 204
    .local v1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p0, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->startAdapters(Landroid/app/Activity;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 205
    .local v0, "adapters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    sget-object v2, Lcom/fyber/mediation/MediationAdapterStarter;->adaptersListener:Lcom/fyber/mediation/AdaptersListener;

    if-eqz v2, :cond_0

    .line 206
    sget-object v2, Lcom/fyber/mediation/MediationAdapterStarter;->adaptersListener:Lcom/fyber/mediation/AdaptersListener;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/fyber/mediation/AdaptersListener;->startedAdapters(Ljava/util/Set;Ljava/util/Map;)V

    .line 208
    :cond_0
    invoke-static {v0, v1}, Lcom/fyber/utils/testsuite/b;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 209
    return-object v0
.end method

.method private static startAppLovin(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const/4 v1, 0x0

    .line 70
    .local v1, "adapterStartedSuccessfully":Z
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;-><init>()V

    .line 71
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v3, "ADAPTER_VERSION"

    const-string v4, "6.3.2-r1"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Starting adapter AppLovin with version 6.3.2-r1"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter AppLovin with version 6.3.2-r1 was started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "applovin"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return v1

    .line 78
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter AppLovin with version 6.3.2-r1 was not started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MediationAdapterStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while loading adapter AppLovin with version 6.3.2-r1 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startApplifier(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const/4 v1, 0x0

    .line 127
    .local v1, "adapterStartedSuccessfully":Z
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;-><init>()V

    .line 128
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v3, "ADAPTER_VERSION"

    const-string v4, "2.0.5-r1"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Starting adapter Applifier with version 2.0.5-r1"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Applifier with version 2.0.5-r1 was started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "applifier"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return v1

    .line 135
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Applifier with version 2.0.5-r1 was not started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MediationAdapterStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while loading adapter Applifier with version 2.0.5-r1 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startInmobi(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "adapterStartedSuccessfully":Z
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;-><init>()V

    .line 33
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v3, "ADAPTER_VERSION"

    const-string v4, "6.1.1-r1"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Starting adapter Inmobi with version 6.1.1-r1"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Inmobi with version 6.1.1-r1 was started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "inmobi"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return v1

    .line 40
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Inmobi with version 6.1.1-r1 was not started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MediationAdapterStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while loading adapter Inmobi with version 6.1.1-r1 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startTapjoy(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "adapterStartedSuccessfully":Z
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;-><init>()V

    .line 109
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v3, "ADAPTER_VERSION"

    const-string v4, "11.9.0-r1"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Starting adapter Tapjoy with version 11.9.0-r1"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Tapjoy with version 11.9.0-r1 was started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "tapjoy"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return v1

    .line 116
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Tapjoy with version 11.9.0-r1 was not started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MediationAdapterStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while loading adapter Tapjoy with version 11.9.0-r1 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startVungle(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, "adapterStartedSuccessfully":Z
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;-><init>()V

    .line 52
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v3, "ADAPTER_VERSION"

    const-string v4, "4.0.3-r2"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Starting adapter Vungle with version 4.0.3-r2"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Vungle with version 4.0.3-r2 was started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "vungle"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return v1

    .line 59
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v3, "MediationAdapterStarter"

    const-string v4, "Adapter Vungle with version 4.0.3-r2 was not started successfully"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "MediationAdapterStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occurred while loading adapter Vungle with version 4.0.3-r2 - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
