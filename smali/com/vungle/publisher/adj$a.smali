.class public final Lcom/vungle/publisher/adj$a;
.super Lcom/vungle/publisher/abv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/abv",
        "<",
        "Lcom/vungle/publisher/adj;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/vungle/publisher/abv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    new-array v0, p1, [Lcom/vungle/publisher/adj;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/vungle/publisher/adj;

    invoke-direct {v0}, Lcom/vungle/publisher/adj;-><init>()V

    return-object v0
.end method

.method protected final synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    if-eqz p1, :cond_1

    new-instance v1, Lcom/vungle/publisher/adj;

    invoke-direct {v1}, Lcom/vungle/publisher/adj;-><init>()V

    const-string v2, "optIn"

    invoke-static {p1, v2}, Lcom/vungle/publisher/se;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/adj;->a:Ljava/lang/Boolean;

    const-string v2, "updateDelay"

    invoke-static {p1, v2}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/adj;->b:Ljava/lang/Integer;

    const-string v2, "threshold"

    invoke-static {p1, v2}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/adj;->c:Ljava/lang/Integer;

    const-string v2, "connection"

    const-class v3, Lcom/vungle/publisher/adj$b;

    invoke-static {p1, v2}, Lcom/vungle/publisher/se;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v3, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_0
    check-cast v0, Lcom/vungle/publisher/adj$b;

    iput-object v0, v1, Lcom/vungle/publisher/adj;->d:Lcom/vungle/publisher/adj$b;

    const-string v0, "exceptionReportingEnabled"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/adj;->e:Ljava/lang/Boolean;

    const-string v0, "last_app_fingerprint_timestamp"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/adj;->f:Ljava/lang/Long;

    const-string v0, "app_fingerprint_frequency"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/adj;->g:Ljava/lang/Long;

    move-object v0, v1

    :cond_1
    return-object v0
.end method
