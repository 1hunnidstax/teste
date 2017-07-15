.class public Lcom/integralads/avid/library/inmobi/d/c;
.super Ljava/lang/Object;
.source "AvidSceenProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/d/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {v0, v0, v0, v0}, Lcom/integralads/avid/library/inmobi/f/d;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 32
    const-string v1, "childViews"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 33
    if-nez v3, :cond_0

    .line 57
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v0

    move v1, v0

    .line 39
    :goto_1
    if-ge v2, v4, :cond_2

    .line 40
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    const-string v6, "x"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 43
    const-string v7, "y"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 44
    const-string v8, "width"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 45
    const-string v9, "height"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 46
    add-int/2addr v6, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 47
    add-int/2addr v5, v7

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_2
    :try_start_0
    const-string v2, "width"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v1, "height"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/integralads/avid/library/inmobi/a/a;->a()Lcom/integralads/avid/library/inmobi/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/a/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/d/e;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d/b;->a()Lcom/integralads/avid/library/inmobi/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/d/b;->c()Lcom/integralads/avid/library/inmobi/d/e;

    move-result-object v0

    return-object v0
.end method
