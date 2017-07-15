.class public final Lcom/vungle/publisher/adx;
.super Lcom/vungle/publisher/add;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/adx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/add",
        "<",
        "Lcom/vungle/publisher/adx;",
        ">;"
    }
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/abt;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/add;-><init>()V

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
    .line 24
    invoke-super {p0}, Lcom/vungle/publisher/add;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    const-string v1, "campaignId"

    iget-object v2, p0, Lcom/vungle/publisher/adx;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/vungle/publisher/adx;->g:Lcom/vungle/publisher/abt;

    invoke-static {v2}, Lcom/vungle/publisher/se;->a(Lcom/vungle/publisher/abe;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "placement"

    iget-object v2, p0, Lcom/vungle/publisher/adx;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
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
    .line 13
    invoke-virtual {p0}, Lcom/vungle/publisher/adx;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
