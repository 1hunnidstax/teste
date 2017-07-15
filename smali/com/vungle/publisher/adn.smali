.class public final Lcom/vungle/publisher/adn;
.super Lcom/vungle/publisher/add;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/adn$b;,
        Lcom/vungle/publisher/adn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/add",
        "<",
        "Lcom/vungle/publisher/adn;",
        ">;"
    }
.end annotation


# instance fields
.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ee;",
            ">;"
        }
    .end annotation
.end field

.field h:[Lcom/vungle/publisher/adn$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
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
    .line 62
    invoke-super {p0}, Lcom/vungle/publisher/add;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    const-string v1, "httpLog"

    iget-object v2, p0, Lcom/vungle/publisher/adn;->h:[Lcom/vungle/publisher/adn$b;

    invoke-static {v2}, Lcom/vungle/publisher/se;->a([Lcom/vungle/publisher/abe;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
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
    .line 50
    invoke-virtual {p0}, Lcom/vungle/publisher/adn;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
