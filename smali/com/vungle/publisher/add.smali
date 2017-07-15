.class public abstract Lcom/vungle/publisher/add;
.super Lcom/vungle/publisher/abg;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/add$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Lcom/vungle/publisher/add",
        "<TQ;>;>",
        "Lcom/vungle/publisher/abg;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/vungle/publisher/abg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Lcom/vungle/publisher/abg;->a()Lorg/json/JSONObject;

    move-result-object v0

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
    .line 6
    invoke-virtual {p0}, Lcom/vungle/publisher/add;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
