.class public final Lcom/vungle/publisher/abg$a;
.super Lcom/vungle/publisher/abe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/abg$a$b;,
        Lcom/vungle/publisher/abg$a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Lcom/vungle/publisher/Demographic$Gender;

.field protected c:Lcom/vungle/publisher/abg$a$b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 101
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
    .line 105
    invoke-super {p0}, Lcom/vungle/publisher/abe;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    const-string v1, "age"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "gender"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a;->b:Lcom/vungle/publisher/Demographic$Gender;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "location"

    iget-object v2, p0, Lcom/vungle/publisher/abg$a;->c:Lcom/vungle/publisher/abg$a$b;

    invoke-static {v2}, Lcom/vungle/publisher/se;->a(Lcom/vungle/publisher/abe;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
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
    .line 92
    invoke-virtual {p0}, Lcom/vungle/publisher/abg$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
