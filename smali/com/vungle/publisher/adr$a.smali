.class public final Lcom/vungle/publisher/adr$a;
.super Lcom/vungle/publisher/aed$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aed$b",
        "<",
        "Lcom/vungle/publisher/adr;",
        "Lcom/vungle/publisher/aep$a;",
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

.field c:Lcom/vungle/publisher/aep$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vungle/publisher/aed$b;-><init>()V

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
    .line 101
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/adr$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adr;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a()Lcom/vungle/publisher/aeo$a;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/adr$a;->c:Lcom/vungle/publisher/aep$a;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lcom/vungle/publisher/adr;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-super {p0, p1}, Lcom/vungle/publisher/aed$b;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adr;

    .line 117
    const-string v1, "postBundle"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adr;->k:Ljava/lang/String;

    .line 118
    const-string v1, "size"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adr;->l:Ljava/lang/Integer;

    .line 119
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adr;->m:Ljava/lang/String;

    .line 120
    const-string v1, "md5"

    iget-object v2, v0, Lcom/vungle/publisher/adr;->m:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/adr$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/vungle/publisher/adr;

    iget-object v1, p0, Lcom/vungle/publisher/adr$a;->b:Lcom/vungle/publisher/agt;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/adr;-><init>(Lcom/vungle/publisher/agt;)V

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
    .line 101
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/adr$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adr;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/adr$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adr;

    move-result-object v0

    return-object v0
.end method
