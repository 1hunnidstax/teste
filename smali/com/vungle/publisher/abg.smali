.class public abstract Lcom/vungle/publisher/abg;
.super Lcom/vungle/publisher/abe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/abg$b;,
        Lcom/vungle/publisher/abg$a;,
        Lcom/vungle/publisher/abg$c;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/vungle/publisher/abg$a;

.field protected d:Lcom/vungle/publisher/abg$b;

.field protected e:Ljava/lang/Boolean;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/publisher/abe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lcom/vungle/publisher/abe;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    const-string v1, "isu"

    iget-object v2, p0, Lcom/vungle/publisher/abg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "ifa"

    iget-object v2, p0, Lcom/vungle/publisher/abg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "demo"

    iget-object v2, p0, Lcom/vungle/publisher/abg;->c:Lcom/vungle/publisher/abg$a;

    invoke-static {v2}, Lcom/vungle/publisher/se;->a(Lcom/vungle/publisher/abe;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "deviceInfo"

    iget-object v2, p0, Lcom/vungle/publisher/abg;->d:Lcom/vungle/publisher/abg$b;

    invoke-static {v2}, Lcom/vungle/publisher/se;->a(Lcom/vungle/publisher/abe;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v1, "adTrackingEnabled"

    iget-object v2, p0, Lcom/vungle/publisher/abg;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v1, "pubAppId"

    iget-object v2, p0, Lcom/vungle/publisher/abg;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vungle/publisher/abg;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
