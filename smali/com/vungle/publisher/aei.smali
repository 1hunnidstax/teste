.class public final Lcom/vungle/publisher/aei;
.super Lcom/vungle/publisher/abe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aei$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lcom/vungle/publisher/ael;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/aei;->b:Lcom/vungle/publisher/ael;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/vungle/publisher/abe;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    :goto_0
    const-string v1, "end"

    iget-object v2, p0, Lcom/vungle/publisher/aei;->a:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/vungle/publisher/aei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string v1, "end"

    iget-object v2, p0, Lcom/vungle/publisher/aei;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aei;->b:Lcom/vungle/publisher/ael;

    invoke-virtual {v0}, Lcom/vungle/publisher/ael;->a()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/vungle/publisher/aei;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
