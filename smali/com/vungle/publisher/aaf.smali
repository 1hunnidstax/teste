.class public final Lcom/vungle/publisher/aaf;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/aac$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/vo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)Lcom/vungle/publisher/we;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/aaf;->a:Lcom/vungle/publisher/aac$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vungle/publisher/aac$a;->a(JJ)Lcom/vungle/publisher/aac;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/aaf;->b:Lcom/vungle/publisher/vo;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0
.end method
