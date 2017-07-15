.class public Lcom/integralads/avid/library/inmobi/f/b;
.super Ljava/lang/Object;
.source "AvidStateCache.java"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-boolean v1, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    if-nez v1, :cond_1

    .line 53
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .line 54
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 55
    :goto_1
    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    .line 57
    :cond_1
    return-void

    :cond_2
    move v2, v0

    .line 53
    goto :goto_0

    :cond_3
    move v1, v0

    .line 54
    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/f/b;->a:Lorg/json/JSONObject;

    .line 26
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    iget-boolean v1, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    if-nez v1, :cond_1

    .line 61
    if-nez p2, :cond_2

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    .line 63
    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-static {p1, p2}, Lcom/integralads/avid/library/inmobi/f/d;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    return v0
.end method

.method public b(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "childViews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->a:Lorg/json/JSONObject;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/b;->b:Z

    .line 35
    return-void
.end method
