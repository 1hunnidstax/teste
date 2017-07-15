.class Lcom/inmobi/ads/AdUnit$5;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1173
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1174
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1175
    const-string v1, "event-name"

    const-string v2, "sdkpubreq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string v1, "event-type"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    const-string v1, "adtype"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const-string v1, "im-plid"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string v1, "event-id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/a;->a()Lcom/inmobi/commons/core/utilities/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/info/a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1181
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1182
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/info/f;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1185
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->r()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 1186
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/d;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1187
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1188
    return-void
.end method
