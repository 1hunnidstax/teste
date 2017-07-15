.class final Lcom/vungle/publisher/aft$b$1;
.super Lcom/vungle/publisher/o;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aft$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/o",
        "<",
        "Lcom/vungle/publisher/ade;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/vungle/publisher/aft$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aft$b;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vungle/publisher/aft$b$1;->b:Lcom/vungle/publisher/aft$b;

    iput-object p2, p0, Lcom/vungle/publisher/aft$b$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/vungle/publisher/o;-><init>()V

    return-void
.end method

.method private e()Lcom/vungle/publisher/ade;
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aft$b$1;->b:Lcom/vungle/publisher/aft$b;

    iget-object v0, v0, Lcom/vungle/publisher/aft$b;->a:Lcom/vungle/publisher/adr$a;

    iget-object v1, p0, Lcom/vungle/publisher/aft$b$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/adr$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adr;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private f()Lcom/vungle/publisher/ade;
    .locals 2

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aft$b$1;->b:Lcom/vungle/publisher/aft$b;

    iget-object v0, v0, Lcom/vungle/publisher/aft$b;->c:Lcom/vungle/publisher/aef$a;

    iget-object v1, p0, Lcom/vungle/publisher/aft$b$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/aef$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aef;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private g()Lcom/vungle/publisher/ade;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aft$b$1;->b:Lcom/vungle/publisher/aft$b;

    iget-object v0, v0, Lcom/vungle/publisher/aft$b;->b:Lcom/vungle/publisher/adu$a;

    iget-object v1, p0, Lcom/vungle/publisher/aft$b$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/adu$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adu;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vungle/publisher/aft$b$1;->e()Lcom/vungle/publisher/ade;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    const-string v0, "VunglePrepare"

    const-string v1, "received invalid ad from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "received invalid ad from server, tossing it and getting a new one"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vungle/publisher/aft$b$1;->f()Lcom/vungle/publisher/ade;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vungle/publisher/aft$b$1;->g()Lcom/vungle/publisher/ade;

    move-result-object v0

    return-object v0
.end method
