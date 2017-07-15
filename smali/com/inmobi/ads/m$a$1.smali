.class Lcom/inmobi/ads/m$a$1;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Lcom/inmobi/ads/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/m$a;-><init>(Landroid/os/Looper;Lcom/inmobi/ads/m;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/m$a;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/m$a;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/inmobi/ads/m$a$1;->a:Lcom/inmobi/ads/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/inmobi/ads/m$a$1;->a:Lcom/inmobi/ads/m$a;

    invoke-static {v0}, Lcom/inmobi/ads/m$a;->a(Lcom/inmobi/ads/m$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/m;

    .line 402
    if-eqz v0, :cond_1

    .line 403
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Asset fetch failed"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget v1, p1, Lcom/inmobi/ads/b;->c:I

    if-lez v1, :cond_0

    .line 405
    iget v1, p1, Lcom/inmobi/ads/b;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/inmobi/ads/b;->c:I

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/inmobi/ads/b;->e:J

    .line 407
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/l;->b(Lcom/inmobi/ads/b;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/m$a$1;->a:Lcom/inmobi/ads/m$a;

    invoke-static {v0, p1}, Lcom/inmobi/ads/m$a;->b(Lcom/inmobi/ads/m$a;Lcom/inmobi/ads/b;)V

    .line 415
    :goto_0
    return-void

    .line 411
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encountered unexpected error in handling onAssetFetchFailed: AssetStore is null"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/commons/core/network/c;Ljava/lang/String;Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 379
    iget-object v0, p0, Lcom/inmobi/ads/m$a$1;->a:Lcom/inmobi/ads/m$a;

    invoke-static {v0}, Lcom/inmobi/ads/m$a;->a(Lcom/inmobi/ads/m$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/m;

    .line 380
    if-eqz v0, :cond_0

    .line 381
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset fetch succeeded.Updating asset with location on disk (file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Lcom/inmobi/ads/b$a;

    invoke-direct {v1}, Lcom/inmobi/ads/b$a;-><init>()V

    .line 385
    invoke-virtual {p3}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->e()Lcom/inmobi/ads/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->a()I

    move-result v5

    .line 387
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->e()Lcom/inmobi/ads/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->d()J

    move-result-wide v6

    move-object v3, p2

    move-object v4, p1

    .line 385
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/network/c;IJ)Lcom/inmobi/ads/b$a;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->a()Lcom/inmobi/ads/b;

    move-result-object v1

    .line 389
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/inmobi/ads/l;->b(Lcom/inmobi/ads/b;)V

    .line 390
    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p4}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;ZLcom/inmobi/ads/b;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/inmobi/ads/m$a$1;->a:Lcom/inmobi/ads/m$a;

    invoke-static {v0, p3}, Lcom/inmobi/ads/m$a;->a(Lcom/inmobi/ads/m$a;Lcom/inmobi/ads/b;)V

    .line 397
    :goto_0
    return-void

    .line 393
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encountered unexpected error in handling onAssetFetchSucceeded: AssetStore is null"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
