.class final Lcom/vungle/publisher/lz$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/lz;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/lz;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vungle/publisher/lz$1;->a:Lcom/vungle/publisher/lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 63
    :try_start_0
    const-string v0, "VungleData"

    const-string v1, "creating and sending app fingerprint"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/lz$1;->a:Lcom/vungle/publisher/lz;

    iget-object v1, v0, Lcom/vungle/publisher/lz;->d:Lcom/vungle/publisher/wr;

    iget-object v0, p0, Lcom/vungle/publisher/lz$1;->a:Lcom/vungle/publisher/lz;

    iget-object v2, v0, Lcom/vungle/publisher/lz;->c:Lcom/vungle/publisher/ly$a;

    iget-object v0, v2, Lcom/vungle/publisher/ly$a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lcom/vungle/publisher/lz$1;->a:Lcom/vungle/publisher/lz;

    iget-object v1, v1, Lcom/vungle/publisher/lz;->f:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleData"

    const-string v3, "exception while creating/ sending app fingerprint"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_1
    return-void

    .line 64
    :cond_1
    :try_start_1
    iget-object v0, v2, Lcom/vungle/publisher/ly$a;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ly;

    iput-object v3, v0, Lcom/vungle/publisher/ly;->a:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vungle/publisher/ly;->b:J

    iget-object v3, v2, Lcom/vungle/publisher/ly$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v3}, Lcom/vungle/publisher/pn;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vungle/publisher/ly;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/vungle/publisher/ly$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v3}, Lcom/vungle/publisher/pn;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/vungle/publisher/ly;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/vungle/publisher/ly$a;->a:Lcom/vungle/publisher/pn;

    invoke-interface {v2}, Lcom/vungle/publisher/pn;->i()Z

    move-result v2

    iput-boolean v2, v0, Lcom/vungle/publisher/ly;->e:Z

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/wr;->a(Lcom/vungle/publisher/ly;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
