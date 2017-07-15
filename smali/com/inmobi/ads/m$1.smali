.class Lcom/inmobi/ads/m$1;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Lcom/inmobi/ads/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/m;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/m;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset fetch failed for remote URL ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p1, Lcom/inmobi/ads/b;->c:I

    if-gtz v0, :cond_0

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exhausted all attempts; signaling clients of failure to fetch this asset"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v0, p1, p2}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;Lcom/inmobi/ads/b;Ljava/lang/String;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->g()V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Updating asset fetch attempt timestamp; will be reattempted later"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/inmobi/ads/b;->e:J

    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v0}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/l;->b(Lcom/inmobi/ads/b;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in starting asset fetcher"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method public a(Lcom/inmobi/commons/core/network/c;Ljava/lang/String;Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lcom/inmobi/commons/core/network/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset fetch succeeded for remote URL ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {p3}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/inmobi/ads/b$a;

    invoke-direct {v1}, Lcom/inmobi/ads/b$a;-><init>()V

    .line 68
    invoke-virtual {p3}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    .line 69
    invoke-static {v0}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->a()I

    move-result v5

    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    .line 70
    invoke-static {v0}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->d()J

    move-result-wide v6

    move-object v3, p2

    move-object v4, p1

    .line 68
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/network/c;IJ)Lcom/inmobi/ads/b$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/inmobi/ads/b$a;->a()Lcom/inmobi/ads/b;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v1}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/l;->b(Lcom/inmobi/ads/b;)V

    .line 73
    iget-object v1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p4}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;ZLcom/inmobi/ads/b;Ljava/lang/String;)V

    .line 74
    return-void
.end method
