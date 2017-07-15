.class public Lcom/miniclip/utils/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    if-nez p0, :cond_1

    .line 36
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 82
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v7, p0, Lorg/json/JSONArray;

    if-nez v7, :cond_0

    instance-of v7, p0, Lorg/json/JSONObject;

    if-nez v7, :cond_0

    .line 41
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 45
    :try_start_0
    instance-of v7, p0, Ljava/util/Collection;

    if-eqz v7, :cond_2

    .line 46
    new-instance v3, Lorg/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v3

    goto :goto_0

    .line 47
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 48
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 49
    .local v5, "length":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 51
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/miniclip/utils/JSONUtils;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_3
    new-instance p0, Lorg/json/JSONArray;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {p0, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 80
    .end local v2    # "i":I
    .end local v5    # "length":I
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p0    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 82
    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    .line 55
    :cond_5
    instance-of v7, p0, Ljava/util/Map;

    if-eqz v7, :cond_6

    .line 56
    new-instance v3, Lorg/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v3

    goto :goto_0

    .line 58
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v7, p0, Landroid/os/Bundle;

    if-eqz v7, :cond_8

    .line 59
    move-object v0, p0

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 60
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/miniclip/utils/JSONUtils;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .end local v4    # "key":Ljava/lang/String;
    :cond_7
    move-object p0, v3

    .line 64
    goto/16 :goto_0

    .line 66
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_8
    instance-of v7, p0, Ljava/lang/Boolean;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Byte;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Character;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Double;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Float;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Integer;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Long;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/Short;

    if-nez v7, :cond_0

    instance-of v7, p0, Ljava/lang/String;

    if-nez v7, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0
.end method
