.class final Lcom/vungle/publisher/zw$1;
.super Lcom/vungle/publisher/o;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/o",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/we;

.field final synthetic b:Lcom/vungle/publisher/vy;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/vungle/publisher/xk;

.field final synthetic e:Lcom/vungle/publisher/zw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zw;Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;Lorg/json/JSONObject;Lcom/vungle/publisher/xk;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iput-object p2, p0, Lcom/vungle/publisher/zw$1;->a:Lcom/vungle/publisher/we;

    iput-object p3, p0, Lcom/vungle/publisher/zw$1;->b:Lcom/vungle/publisher/vy;

    iput-object p4, p0, Lcom/vungle/publisher/zw$1;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/vungle/publisher/zw$1;->d:Lcom/vungle/publisher/xk;

    invoke-direct {p0}, Lcom/vungle/publisher/o;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v0, v0, Lcom/vungle/publisher/zw;->a:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ap;

    iget-object v2, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v2, v2, Lcom/vungle/publisher/zw;->b:Lcom/vungle/publisher/aea$a;

    iget-object v3, p0, Lcom/vungle/publisher/zw$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/aea$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aea;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/zw$1;->d:Lcom/vungle/publisher/xk;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/ap;-><init>(Lcom/vungle/publisher/aea;Lcom/vungle/publisher/xk;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v1, v1, Lcom/vungle/publisher/zw;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleNetwork"

    const-string v3, "error parsing json response from RequestStreamingAd for vungle streaming ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v0, v0, Lcom/vungle/publisher/zw;->a:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ao;

    iget-object v2, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v2, v2, Lcom/vungle/publisher/zw;->i:Lcom/vungle/publisher/adu$a;

    iget-object v3, p0, Lcom/vungle/publisher/zw$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/adu$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adu;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/zw$1;->d:Lcom/vungle/publisher/xk;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/ao;-><init>(Lcom/vungle/publisher/adu;Lcom/vungle/publisher/xk;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v1, v1, Lcom/vungle/publisher/zw;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleNetwork"

    const-string v3, "error parsing json response from RequestStreamingAd for third party mraid ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v0, v0, Lcom/vungle/publisher/zw;->c:Lcom/vungle/publisher/gm$a;

    const-string v1, "VungleNetwork"

    const-string v2, "received local ad, expected streaming ad from server, ignoring"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v1, p0, Lcom/vungle/publisher/zw$1;->a:Lcom/vungle/publisher/we;

    iget-object v2, p0, Lcom/vungle/publisher/zw$1;->b:Lcom/vungle/publisher/vy;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/zw;->d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vungle/publisher/zw$1;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v0, v0, Lcom/vungle/publisher/zw;->c:Lcom/vungle/publisher/gm$a;

    const-string v1, "VungleNetwork"

    const-string v2, "received vungle mraid ad, expected streaming ad from server, ignoring"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vungle/publisher/zw$1;->e:Lcom/vungle/publisher/zw;

    iget-object v1, p0, Lcom/vungle/publisher/zw$1;->a:Lcom/vungle/publisher/we;

    iget-object v2, p0, Lcom/vungle/publisher/zw$1;->b:Lcom/vungle/publisher/vy;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/zw;->d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vungle/publisher/zw$1;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
