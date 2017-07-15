.class final Lcom/inmobi/ads/bg$a;
.super Ljava/lang/Object;
.source "VastCompanionAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/bg$a$a;
    }
.end annotation


# instance fields
.field a:Lcom/inmobi/ads/bg$a$a;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/bg$a$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/inmobi/ads/bg$a;->a:Lcom/inmobi/ads/bg$a$a;

    .line 37
    iput-object p2, p0, Lcom/inmobi/ads/bg$a;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/inmobi/ads/bg$a$a;
    .locals 3

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    sget-object v0, Lcom/inmobi/ads/bg$a$a;->a:Lcom/inmobi/ads/bg$a$a;

    .line 68
    :goto_0
    return-object v0

    .line 59
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 62
    sget-object v0, Lcom/inmobi/ads/bg$a$a;->a:Lcom/inmobi/ads/bg$a$a;

    goto :goto_0

    .line 59
    :sswitch_0
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "iframe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    .line 64
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/bg$a$a;->b:Lcom/inmobi/ads/bg$a$a;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/bg$a$a;->c:Lcom/inmobi/ads/bg$a$a;

    goto :goto_0

    .line 68
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/bg$a$a;->d:Lcom/inmobi/ads/bg$a$a;

    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x47007d5c -> :sswitch_3
        -0x35323192 -> :sswitch_1
        -0x10fa53b6 -> :sswitch_0
        0x3107ab -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/inmobi/ads/bg$a;
    .locals 5

    .prologue
    .line 42
    :try_start_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/bg$a;->a(Ljava/lang/String;)Lcom/inmobi/ads/bg$a$a;

    move-result-object v1

    .line 43
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    new-instance v0, Lcom/inmobi/ads/bg$a;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/bg$a;-><init>(Lcom/inmobi/ads/bg$a$a;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/bg;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error building resource from JSONObject; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/bg$a$a;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/inmobi/ads/bg$1;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/bg$a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    const-string v0, "unknown"

    .line 98
    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "static"

    goto :goto_0

    .line 96
    :pswitch_1
    const-string v0, "html"

    goto :goto_0

    .line 98
    :pswitch_2
    const-string v0, "iframe"

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_0
    const-string v1, "type"

    iget-object v2, p0, Lcom/inmobi/ads/bg$a;->a:Lcom/inmobi/ads/bg$a$a;

    invoke-direct {p0, v2}, Lcom/inmobi/ads/bg$a;->a(Lcom/inmobi/ads/bg$a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "content"

    iget-object v2, p0, Lcom/inmobi/ads/bg$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/bg;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error serializing resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 82
    const-string v0, ""

    goto :goto_0
.end method
