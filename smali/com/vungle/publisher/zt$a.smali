.class public final Lcom/vungle/publisher/zt$a;
.super Lcom/vungle/publisher/yf$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/zt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/yf$a",
        "<",
        "Lcom/vungle/publisher/zt;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/adx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vungle/publisher/yf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/zt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/sd;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/yf$a;->a()Lcom/vungle/publisher/yf;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/zt;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/zt$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "requestStreamingAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    .line 45
    iget-object v1, v0, Lcom/vungle/publisher/vs;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/vungle/publisher/zt$a;->g:Lcom/vungle/publisher/adx$a;

    invoke-virtual {v1, p1, p2}, Lcom/vungle/publisher/adx$a;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/adx;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/vungle/publisher/adx;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/vungle/publisher/sd;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/sd;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/vungle/publisher/zt;

    invoke-direct {v0}, Lcom/vungle/publisher/zt;-><init>()V

    return-object v0
.end method
