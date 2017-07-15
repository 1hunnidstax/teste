.class public final Lcom/vungle/publisher/aep$a;
.super Lcom/vungle/publisher/aeo$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aeo$a",
        "<",
        "Lcom/vungle/publisher/aep;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/acc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/vungle/publisher/aeo$a;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aep;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    if-eqz p1, :cond_0

    .line 104
    new-instance v1, Lcom/vungle/publisher/aep;

    invoke-direct {v1}, Lcom/vungle/publisher/aep;-><init>()V

    .line 105
    const-string v0, "postroll_click"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->a:Ljava/util/List;

    .line 106
    const-string v0, "video_click"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->b:Ljava/util/List;

    .line 107
    const-string v0, "video_close"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->c:Ljava/util/List;

    .line 108
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->d:Ljava/util/List;

    .line 109
    const-string v0, "mute"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->e:Ljava/util/List;

    .line 110
    const-string v0, "pause"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->f:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/aep$a;->a:Lcom/vungle/publisher/acc$a;

    const-string v2, "play_percentage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/acc$a;->a(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/acc;

    iput-object v0, v1, Lcom/vungle/publisher/aep;->g:[Lcom/vungle/publisher/acc;

    .line 112
    const-string v0, "postroll_view"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->h:Ljava/util/List;

    .line 113
    const-string v0, "resume"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->i:Ljava/util/List;

    .line 114
    const-string v0, "unmute"

    invoke-static {p1, v0}, Lcom/vungle/publisher/se;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/aep;->j:Ljava/util/List;

    move-object v0, v1

    .line 116
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    new-array v0, p1, [Lcom/vungle/publisher/aep;

    return-object v0
.end method

.method public final synthetic b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aeo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/vungle/publisher/aep$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aep;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/vungle/publisher/aep;

    invoke-direct {v0}, Lcom/vungle/publisher/aep;-><init>()V

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
    .line 93
    invoke-direct {p0, p1}, Lcom/vungle/publisher/aep$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aep;

    move-result-object v0

    return-object v0
.end method
