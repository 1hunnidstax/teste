.class public Lcom/integralads/avid/library/inmobi/session/internal/b;
.super Ljava/lang/Object;
.source "InternalAvidAdSessionContext.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/integralads/avid/library/inmobi/session/g;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/integralads/avid/library/inmobi/b;->a()Lcom/integralads/avid/library/inmobi/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/b;->a(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->a:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->b:Lcom/integralads/avid/library/inmobi/session/g;

    .line 31
    iput-object p3, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->d:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :try_start_0
    const-string v0, "avidAdSessionId"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v0, "bundleIdentifier"

    invoke-static {}, Lcom/integralads/avid/library/inmobi/b;->a()Lcom/integralads/avid/library/inmobi/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v0, "partner"

    invoke-static {}, Lcom/integralads/avid/library/inmobi/b;->a()Lcom/integralads/avid/library/inmobi/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "partnerVersion"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->b:Lcom/integralads/avid/library/inmobi/session/g;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/session/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "avidLibraryVersion"

    invoke-static {}, Lcom/integralads/avid/library/inmobi/b;->a()Lcom/integralads/avid/library/inmobi/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "avidAdSessionType"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v0, "mediaType"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v0, "isDeferred"

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/b;->b:Lcom/integralads/avid/library/inmobi/session/g;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/session/g;->b()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
