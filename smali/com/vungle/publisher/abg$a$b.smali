.class public final Lcom/vungle/publisher/abg$a$b;
.super Lcom/vungle/publisher/abe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/abg$a$b$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Float;

.field protected b:Ljava/lang/Double;

.field protected c:Ljava/lang/Double;

.field protected d:Ljava/lang/Float;

.field protected e:Ljava/lang/Long;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 162
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
    .line 166
    invoke-super {p0}, Lcom/vungle/publisher/abe;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    const-string v1, "accuracyMeters"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a$b;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v1, "lat"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a$b;->b:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v1, "long"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a$b;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v1, "speedMetersPerSecond"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a$b;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "timestampMillis"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a$b;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/vungle/publisher/abg$a$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
