.class public final Lcom/vungle/publisher/abg$b;
.super Lcom/vungle/publisher/abe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/abg$b$a;,
        Lcom/vungle/publisher/abg$b$b;,
        Lcom/vungle/publisher/abg$b$c;
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/un;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Float;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/Boolean;

.field protected g:Ljava/lang/Boolean;

.field protected h:Lcom/vungle/publisher/abg$b$a;

.field protected i:Ljava/lang/Boolean;

.field protected j:Ljava/lang/Boolean;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Lcom/vungle/publisher/abg$b$c;

.field protected p:Ljava/lang/Float;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/Long;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/vungle/publisher/abe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-super {p0}, Lcom/vungle/publisher/abe;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 260
    const-string v0, "connection"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->a:Lcom/vungle/publisher/un;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v0, "connectionDetail"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "dataSaverStatus"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v0, "isNetworkMetered"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v0, "batteryLevel"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->d:Ljava/lang/Float;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v0, "batteryState"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v0, "isBatterySaverEnabled"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v0, "dim"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->h:Lcom/vungle/publisher/abg$b$a;

    invoke-static {v2}, Lcom/vungle/publisher/se;->a(Lcom/vungle/publisher/abe;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v2, "isSdCardAvailable"

    iget-object v0, p0, Lcom/vungle/publisher/abg$b;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "soundEnabled"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->j:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v0, "mac"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "model"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "networkOperator"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v0, "osVersion"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v0, "platform"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->o:Lcom/vungle/publisher/abg$b$c;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v0, "volume"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->p:Ljava/lang/Float;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "userAgent"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v0, "bytesAvailable"

    iget-object v2, p0, Lcom/vungle/publisher/abg$b;->r:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    return-object v1

    .line 268
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/vungle/publisher/abg$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
