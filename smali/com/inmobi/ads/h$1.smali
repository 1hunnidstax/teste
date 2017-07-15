.class Lcom/inmobi/ads/h$1;
.super Ljava/lang/Object;
.source "AdStore.java"

# interfaces
.implements Lcom/inmobi/ads/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/h;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/h;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Lcom/inmobi/ads/m;->a()Lcom/inmobi/ads/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v2}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/m$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/m;->b(Ljava/lang/String;Lcom/inmobi/ads/m$b;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "latency"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "size"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v1}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "VideoAssetDownloadFailed"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    .line 98
    invoke-static {v0}, Lcom/inmobi/ads/h;->d(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    .line 99
    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/inmobi/ads/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 101
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 110
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/inmobi/ads/h$a;->a(JZ)V

    goto :goto_2

    .line 112
    :cond_4
    return-void
.end method

.method public a(Lcom/inmobi/ads/b;ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 116
    invoke-static {}, Lcom/inmobi/ads/m;->a()Lcom/inmobi/ads/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v2}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/m$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/m;->b(Ljava/lang/String;Lcom/inmobi/ads/m$b;)V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "latency"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "size"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "clientRequestId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    if-eqz p2, :cond_1

    .line 125
    iget-object v1, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v1}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "GotCachedVideoAsset"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->d(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    .line 132
    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 131
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/inmobi/ads/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/h;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ads mapping to this asset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 137
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v1}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "VideoAssetDownloaded"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 147
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/h;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying ad unit with placement ID ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/inmobi/ads/h$1;->a:Lcom/inmobi/ads/h;

    invoke-static {v0}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/inmobi/ads/h$a;->a(JZ)V

    goto :goto_3

    .line 151
    :cond_5
    return-void
.end method
