.class public final Lcom/vungle/publisher/aft$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/adf;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Lcom/vungle/publisher/ade;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/adr$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/adu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/aef$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 35
    check-cast p1, Lcom/vungle/publisher/adf;

    iget-boolean v0, p1, Lcom/vungle/publisher/adf;->k:Z

    iget-object v1, p1, Lcom/vungle/publisher/ade;->e:Lcom/vungle/publisher/j;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/vungle/publisher/ade;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "VunglePrepare"

    const-string v1, "received expired ad from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ad is expired"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "VunglePrepare"

    const-string v1, "received null adType from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "adType is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received a valid ad, continue processing ad with type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/vungle/publisher/adf;->l:Lorg/json/JSONObject;

    new-instance v2, Lcom/vungle/publisher/aft$b$1;

    invoke-direct {v2, p0, v0}, Lcom/vungle/publisher/aft$b$1;-><init>(Lcom/vungle/publisher/aft$b;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/aft$b$1;->a(Lcom/vungle/publisher/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ade;

    :goto_1
    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
