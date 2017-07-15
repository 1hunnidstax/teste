.class final Lcom/vungle/publisher/adn$b;
.super Lcom/vungle/publisher/abe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/adn$b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Integer;

.field f:Ljava/lang/Long;

.field g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
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
    .line 127
    invoke-super {p0}, Lcom/vungle/publisher/abe;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    const-string v1, "campaignId"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v1, "deliveryId"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v1, "deviceMillis"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v1, "event"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "responseCode"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "responseMillis"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "url"

    iget-object v2, p0, Lcom/vungle/publisher/adn$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
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
    .line 108
    invoke-virtual {p0}, Lcom/vungle/publisher/adn$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
