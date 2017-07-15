.class Lcom/inmobi/rendering/a/c$2;
.super Ljava/lang/Thread;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Z

.field final synthetic d:Lcom/inmobi/rendering/a/c;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$2;->d:Lcom/inmobi/rendering/a/c;

    iput-object p2, p0, Lcom/inmobi/rendering/a/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/a/c$2;->b:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/inmobi/rendering/a/c$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    .line 171
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 172
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/inmobi/rendering/a/a;

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/a/c$2;->b:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/inmobi/rendering/a/c$2;->c:Z

    const/4 v4, 0x0

    sget-object v5, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v5}, Lcom/inmobi/ads/c$c;->a()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/rendering/a/a;-><init>(Ljava/lang/String;Ljava/util/Map;ZZI)V

    .line 174
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for pinging over HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/inmobi/rendering/a/c$2;->d:Lcom/inmobi/rendering/a/c;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in pinging click; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
