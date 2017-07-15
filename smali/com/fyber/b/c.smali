.class public abstract Lcom/fyber/b/c;
.super Lcom/fyber/b/h;
.source "AdRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/internal/InternalAd",
        "<TV;*>;>",
        "Lcom/fyber/b/h",
        "<",
        "Lcom/fyber/ads/a",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/fyber/utils/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/fyber/b/h;-><init>(Lcom/fyber/utils/u;)V

    .line 36
    iput-boolean v0, p0, Lcom/fyber/b/c;->a:Z

    .line 42
    iput-object p2, p0, Lcom/fyber/b/c;->b:Ljava/lang/String;

    .line 43
    iput-boolean v0, p0, Lcom/fyber/b/c;->c:Z

    .line 44
    return-void
.end method

.method private a(Lcom/fyber/utils/i;)Lcom/fyber/ads/a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/i;",
            ")",
            "Lcom/fyber/ads/a",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/fyber/utils/i;->b()I

    move-result v0

    .line 57
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_1

    .line 58
    :cond_0
    new-instance v1, Lcom/fyber/exceptions/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR - Status code returned by the server - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/fyber/exceptions/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/fyber/utils/i;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 65
    const/4 v1, 0x0

    .line 68
    iget-boolean v3, p0, Lcom/fyber/b/c;->a:Z

    if-eqz v3, :cond_a

    .line 69
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/h;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/fyber/utils/h;->c()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {v1}, Lcom/fyber/utils/h;->d()I

    move-result v1

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/fyber/b/c;->a_()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Parsing ads response\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1128
    const-string v0, "validation_timeout"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1129
    const/16 v5, 0xb4

    if-gt v0, v5, :cond_2

    if-gtz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/fyber/b/c;->b()I

    move-result v0

    .line 80
    :cond_3
    const-string v5, "ads"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v5, v2

    .line 81
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_8

    .line 82
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 83
    const-string v4, "provider_type"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string v9, "ad_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-virtual {p0, v4, v9}, Lcom/fyber/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;

    move-result-object v9

    .line 88
    const-string v10, "tracking_params"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 89
    invoke-direct {p0, v9, v10}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/internal/InternalAd;Lorg/json/JSONObject;)V

    .line 91
    sget-object v10, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v10, v4}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v10, "adapter_version"

    invoke-virtual {v9, v10, v4}, Lcom/fyber/ads/internal/InternalAd;->addTrackingParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;

    .line 94
    invoke-virtual {v8}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v10

    move v4, v2

    .line 95
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 96
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 97
    const-string v12, "ad_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "provider_type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "tracking_params"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 98
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/fyber/ads/internal/InternalAd;->addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;

    .line 95
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 102
    :cond_5
    iget-boolean v4, p0, Lcom/fyber/b/c;->a:Z

    if-eqz v4, :cond_7

    .line 103
    invoke-virtual {v9}, Lcom/fyber/ads/internal/InternalAd;->getRawContextData()Ljava/util/Map;

    move-result-object v4

    const-string v8, "orientation"

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 104
    const-string v4, "orientation"

    invoke-virtual {v9, v4, v3}, Lcom/fyber/ads/internal/InternalAd;->addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;

    .line 107
    :cond_6
    const-string v4, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Lcom/fyber/ads/internal/InternalAd;->addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;

    .line 110
    :cond_7
    invoke-virtual {v6, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_1

    :cond_8
    move v2, v0

    .line 120
    :cond_9
    new-instance v0, Lcom/fyber/ads/a;

    invoke-direct {v0, v2, v6}, Lcom/fyber/ads/a;-><init>(ILjava/util/List;)V

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {p0}, Lcom/fyber/b/c;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2124
    new-instance v1, Lcom/fyber/exceptions/a;

    const-string v2, "json_parsing"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/fyber/exceptions/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v3, v1

    move v1, v2

    goto/16 :goto_0
.end method

.method private a(Lcom/fyber/ads/internal/InternalAd;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fyber/ads/internal/InternalAd;->addTrackingParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {p0}, Lcom/fyber/b/c;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method

.method protected abstract b()I
.end method

.method protected final synthetic b(Lcom/fyber/utils/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fyber/b/c;->a(Lcom/fyber/utils/i;)Lcom/fyber/ads/a;

    move-result-object v0

    return-object v0
.end method
