.class public Lcom/inmobi/ads/AdUnit$c;
.super Ljava/lang/Object;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method static synthetic a(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1377
    invoke-static {p0}, Lcom/inmobi/ads/AdUnit$c;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1386
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1388
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 1397
    :goto_1
    const-string v2, "creativeType"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    return-object v1

    .line 1386
    :sswitch_0
    const-string v2, "nonvideo"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1391
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_DISPLAY:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    goto :goto_1

    .line 1394
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    goto :goto_1

    .line 1386
    :sswitch_data_0
    .sparse-switch
        0x6b0147b -> :sswitch_1
        0x54fa21ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
