.class Lcom/inmobi/ads/ab$c$1$2;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ab$c$1;->f(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ab;

.field final synthetic b:Lcom/inmobi/ads/ab$b;

.field final synthetic c:Lcom/inmobi/ads/ab$c$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ab$c$1;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/inmobi/ads/ab$c$1$2;->c:Lcom/inmobi/ads/ab$c$1;

    iput-object p2, p0, Lcom/inmobi/ads/ab$c$1$2;->a:Lcom/inmobi/ads/ab;

    iput-object p3, p0, Lcom/inmobi/ads/ab$c$1$2;->b:Lcom/inmobi/ads/ab$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$2;->c:Lcom/inmobi/ads/ab$c$1;

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$2;->a:Lcom/inmobi/ads/ab;

    iget-object v2, p0, Lcom/inmobi/ads/ab$c$1$2;->b:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ab$c$1;->d(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 97
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
