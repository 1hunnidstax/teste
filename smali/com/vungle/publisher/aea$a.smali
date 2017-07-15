.class public final Lcom/vungle/publisher/aea$a;
.super Lcom/vungle/publisher/aed$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aed$b",
        "<",
        "Lcom/vungle/publisher/aea;",
        "Lcom/vungle/publisher/aep$a;",
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

.field c:Lcom/vungle/publisher/aep$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vungle/publisher/aed$b;-><init>()V

    return-void
.end method

.method private c()Lcom/vungle/publisher/aea;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/vungle/publisher/aea;

    iget-object v1, p0, Lcom/vungle/publisher/aea$a;->b:Lcom/vungle/publisher/agt;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aea;-><init>(Lcom/vungle/publisher/agt;)V

    return-object v0
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
    .line 45
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aea$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aea;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a()Lcom/vungle/publisher/aeo$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/aea$a;->c:Lcom/vungle/publisher/aep$a;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-array v0, p1, [Lcom/vungle/publisher/aea;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aea;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v0, "shouldStream"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-super {p0, p1}, Lcom/vungle/publisher/aed$b;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aea;

    .line 68
    :goto_0
    iput-object v1, v0, Lcom/vungle/publisher/aea;->k:Ljava/lang/Boolean;

    .line 70
    :cond_0
    return-object v0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/vungle/publisher/aea$a;->c()Lcom/vungle/publisher/aea;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/aea$a;->c()Lcom/vungle/publisher/aea;

    move-result-object v0

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
    .line 45
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aea$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aea;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aea$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aea;

    move-result-object v0

    return-object v0
.end method
