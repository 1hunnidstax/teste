.class public final Lcom/vungle/publisher/zw;
.super Lcom/vungle/publisher/wv;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/aea$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/adu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/adf$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Lcom/vungle/publisher/wv;-><init>()V

    .line 46
    iput v0, p0, Lcom/vungle/publisher/wv;->f:I

    .line 47
    iput v0, p0, Lcom/vungle/publisher/wv;->e:I

    .line 48
    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p2, Lcom/vungle/publisher/vy;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/zw;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vungle/publisher/zw;->j:Lcom/vungle/publisher/adf$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/adf$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adf;

    .line 56
    iget-object v6, v0, Lcom/vungle/publisher/ade;->e:Lcom/vungle/publisher/j;

    .line 57
    iget-object v4, v0, Lcom/vungle/publisher/adf;->l:Lorg/json/JSONObject;

    .line 58
    if-nez v6, :cond_0

    .line 59
    const-string v0, "VungleNetwork"

    const-string v1, "received ad with null ad type"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/zw;->d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v5, p1, Lcom/vungle/publisher/we;->c:Lcom/vungle/publisher/xk;

    new-instance v0, Lcom/vungle/publisher/zw$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/zw$1;-><init>(Lcom/vungle/publisher/zw;Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;Lorg/json/JSONObject;Lcom/vungle/publisher/xk;)V

    invoke-virtual {v0, v6}, Lcom/vungle/publisher/zw$1;->a(Lcom/vungle/publisher/j;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/zw;->a:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/af;

    invoke-direct {v1}, Lcom/vungle/publisher/af;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
