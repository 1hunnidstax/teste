.class public abstract Lcom/vungle/publisher/aed$b;
.super Lcom/vungle/publisher/ade$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/aed;",
        "T:",
        "Lcom/vungle/publisher/aeo$a",
        "<*>;>",
        "Lcom/vungle/publisher/ade$a",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field protected d:Lcom/vungle/publisher/aed$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/vungle/publisher/ade$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lorg/json/JSONObject;)Lcom/vungle/publisher/ade;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aed$b;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Lcom/vungle/publisher/aeo$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aed$b;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/vungle/publisher/ade$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/ade;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aed;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    const-string v1, "asyncThreshold"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->o:Ljava/lang/Integer;

    .line 137
    const-string v1, "retryCount"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->n:Ljava/lang/Integer;

    .line 138
    const-string v1, "callToActionDest"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->p:Ljava/lang/String;

    .line 139
    const-string v1, "cta_overlay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/aed$a$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed$a;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->q:Lcom/vungle/publisher/aed$a;

    .line 140
    const-string v1, "callToActionUrl"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->r:Ljava/lang/String;

    .line 141
    const-string v1, "chk"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->s:Ljava/lang/String;

    .line 142
    const-string v1, "showCloseIncentivized"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->t:Ljava/lang/Integer;

    .line 143
    const-string v1, "showClose"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->u:Ljava/lang/Integer;

    .line 144
    const-string v1, "countdown"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->v:Ljava/lang/Integer;

    .line 145
    const-string v1, "videoHeight"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->w:Ljava/lang/Integer;

    .line 146
    const-string v1, "videoHeight"

    iget-object v2, v0, Lcom/vungle/publisher/aed;->w:Ljava/lang/Integer;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/aed$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->x:Ljava/lang/String;

    .line 148
    const-string v1, "url"

    iget-object v2, v0, Lcom/vungle/publisher/aed;->x:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/aed$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v1, "videoWidth"

    invoke-static {p1, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->y:Ljava/lang/Integer;

    .line 150
    const-string v1, "videoWidth"

    iget-object v2, v0, Lcom/vungle/publisher/aed;->y:Ljava/lang/Integer;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/aed$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/vungle/publisher/aed$b;->a()Lcom/vungle/publisher/aeo$a;

    move-result-object v1

    const-string v2, "tpat"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/aeo$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aeo;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed;->d:Lcom/vungle/publisher/aeo;

    .line 153
    :cond_0
    return-object v0
.end method
