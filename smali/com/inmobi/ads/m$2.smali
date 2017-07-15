.class Lcom/inmobi/ads/m$2;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/m;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/ads/m;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/m;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    iput-object p2, p0, Lcom/inmobi/ads/m$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/ads/m$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 306
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to cache remote URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/m$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    invoke-static {v0}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/m$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/l;->a(Ljava/lang/String;)Lcom/inmobi/ads/b;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found disk cache location ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Checking if file exists at this location ..."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache hit; file exists location on disk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/ads/m$2;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;ZLcom/inmobi/ads/b;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 319
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not exist at location ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    invoke-static {v1}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/l;->c(Lcom/inmobi/ads/b;)V

    .line 324
    :cond_1
    new-instance v0, Lcom/inmobi/ads/b$a;

    invoke-direct {v0}, Lcom/inmobi/ads/b$a;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/inmobi/ads/m$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    .line 327
    invoke-static {v2}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$a;->a()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    .line 328
    invoke-static {v3}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/c$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->d()J

    move-result-wide v4

    .line 326
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/inmobi/ads/b$a;->a(Ljava/lang/String;IJ)Lcom/inmobi/ads/b$a;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/inmobi/ads/b$a;->a()Lcom/inmobi/ads/b;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    invoke-static {v1}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/m$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/l;->a(Ljava/lang/String;)Lcom/inmobi/ads/b;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    invoke-static {v1}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/l;->b(Lcom/inmobi/ads/b;)V

    .line 336
    :goto_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cache miss; attempting to cache asset"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v1, Lcom/inmobi/ads/a/a;

    iget-object v2, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    invoke-static {v2}, Lcom/inmobi/ads/m;->c(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/a/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/m$2;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/inmobi/ads/a/a;-><init>(Lcom/inmobi/ads/a/a$a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/a/a;->a(Lcom/inmobi/ads/b;)V

    goto/16 :goto_0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/m$2;->c:Lcom/inmobi/ads/m;

    invoke-static {v1}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/l;->a(Lcom/inmobi/ads/b;)V

    goto :goto_1
.end method
