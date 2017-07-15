.class public final Lcom/vungle/publisher/aef$a;
.super Lcom/vungle/publisher/ade$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ade$a",
        "<",
        "Lcom/vungle/publisher/aef;",
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

.field c:Lcom/vungle/publisher/afa$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/aeu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/abp$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 58
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
    .line 44
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aef$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aef;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    new-array v0, p1, [Lcom/vungle/publisher/aef;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aef;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vungle/publisher/ade$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/ade;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aef;

    .line 63
    if-eqz v0, :cond_1

    .line 64
    const-string v1, "templateSettings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    const-string v2, "normal_replacements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/aef;->k:Lorg/json/JSONObject;

    .line 67
    const-string v2, "cacheable_replacements"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/aeu$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aeu;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aef;->l:Lcom/vungle/publisher/aeu;

    .line 69
    :cond_0
    const-string v1, "templateId"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aef;->n:Ljava/lang/String;

    .line 70
    const-string v1, "templateURL"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aef;->m:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/vungle/publisher/aef$a;->e:Lcom/vungle/publisher/abp$a;

    const-string v2, "tpat"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/abp$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/abp;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aef;->d:Lcom/vungle/publisher/aeo;

    .line 73
    :cond_1
    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/vungle/publisher/aef;

    iget-object v1, p0, Lcom/vungle/publisher/aef$a;->b:Lcom/vungle/publisher/agt;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aef;-><init>(Lcom/vungle/publisher/agt;)V

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
    .line 44
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aef$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aef;

    move-result-object v0

    return-object v0
.end method
