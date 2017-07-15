.class public final Lcom/vungle/publisher/adu$a;
.super Lcom/vungle/publisher/ade$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ade$a",
        "<",
        "Lcom/vungle/publisher/adu;",
        "Lcom/vungle/publisher/abp$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/agt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vungle/publisher/ade$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/json/JSONObject;)Lcom/vungle/publisher/ade;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/adu$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adu;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/adu;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adu;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/vungle/publisher/ade$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/ade;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adu;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "mraidContent"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adu;->k:Ljava/lang/String;

    .line 42
    :cond_0
    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/vungle/publisher/adu;

    iget-object v1, p0, Lcom/vungle/publisher/adu$a;->b:Lcom/vungle/publisher/agt;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/adu;-><init>(Lcom/vungle/publisher/agt;)V

    return-object v0
.end method

.method public final synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/adu$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adu;

    move-result-object v0

    return-object v0
.end method
