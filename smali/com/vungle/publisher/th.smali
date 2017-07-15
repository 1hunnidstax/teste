.class public final Lcom/vungle/publisher/th;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field a:Lcom/vungle/publisher/nb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lcom/vungle/publisher/ss;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/vungle/publisher/tp$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    .locals 4

    .prologue
    .line 82
    const-string v0, "notifyPropertiesChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/vungle/publisher/ss;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Z)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "incentivizedDialogResponse"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/vungle/publisher/ss;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a(ZLandroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/th;->d:Lcom/vungle/publisher/tp$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/tp$a;->a()Lcom/vungle/publisher/tp;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/tp;->a(Z)V

    .line 67
    :try_start_0
    invoke-virtual {v0}, Lcom/vungle/publisher/tp;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/th;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/vungle/publisher/th;->b:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "could not update viewable properties"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
