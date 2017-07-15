.class public final Lcom/vungle/publisher/aed$a$a;
.super Lcom/vungle/publisher/abv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aed$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/abv",
        "<",
        "Lcom/vungle/publisher/aed$a;",
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
    .line 206
    invoke-direct {p0}, Lcom/vungle/publisher/abv;-><init>()V

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    if-eqz p0, :cond_0

    .line 212
    new-instance v0, Lcom/vungle/publisher/aed$a;

    invoke-direct {v0}, Lcom/vungle/publisher/aed$a;-><init>()V

    .line 213
    const-string v1, "click_area"

    invoke-static {p0, v1}, Lcom/vungle/publisher/se;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed$a;->a:Ljava/lang/Float;

    .line 214
    const-string v1, "enabled"

    invoke-static {p0, v1}, Lcom/vungle/publisher/se;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed$a;->c:Ljava/lang/Boolean;

    .line 215
    const-string v1, "show_onclick"

    invoke-static {p0, v1}, Lcom/vungle/publisher/se;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed$a;->d:Ljava/lang/Boolean;

    .line 216
    const-string v1, "time_show"

    invoke-static {p0, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed$a;->e:Ljava/lang/Integer;

    .line 217
    const-string v1, "time_enabled"

    invoke-static {p0, v1}, Lcom/vungle/publisher/se;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aed$a;->b:Ljava/lang/Integer;

    .line 219
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    new-array v0, p1, [Lcom/vungle/publisher/aed$a;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/vungle/publisher/aed$a;

    invoke-direct {v0}, Lcom/vungle/publisher/aed$a;-><init>()V

    return-object v0
.end method

.method protected final synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Lcom/vungle/publisher/aed$a$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aed$a;

    move-result-object v0

    return-object v0
.end method
