.class public final Lcom/vungle/publisher/zz;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/zt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/zw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/we;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vungle/publisher/zz;->a:Lcom/vungle/publisher/zt$a;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/zt$a;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/zt;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/zz;->b:Lcom/vungle/publisher/zw;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0
.end method
