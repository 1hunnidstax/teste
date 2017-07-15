.class public final Lcom/vungle/publisher/adf$a;
.super Lcom/vungle/publisher/ade$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ade$a",
        "<",
        "Lcom/vungle/publisher/adf;",
        "Lcom/vungle/publisher/aeo$a",
        "<*>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/agt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/j$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vungle/publisher/ade$a;-><init>()V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/vungle/publisher/ade$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/ade;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adf;

    .line 48
    iput-object p1, v0, Lcom/vungle/publisher/adf;->l:Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0}, Lcom/vungle/publisher/adf;->b()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/vungle/publisher/adf;->k:Z

    .line 50
    return-object v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 35
    invoke-direct {p0, p1}, Lcom/vungle/publisher/adf$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adf;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vungle/publisher/adf;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/vungle/publisher/adf;

    iget-object v1, p0, Lcom/vungle/publisher/adf$a;->b:Lcom/vungle/publisher/agt;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/adf;-><init>(Lcom/vungle/publisher/agt;)V

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
    .line 35
    invoke-direct {p0, p1}, Lcom/vungle/publisher/adf$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/adf;

    move-result-object v0

    return-object v0
.end method
