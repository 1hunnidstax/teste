.class synthetic Lcom/inmobi/ads/ai$1;
.super Ljava/lang/Object;
.source "NativeV2AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 703
    invoke-static {}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->values()[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/ai$1;->d:[I

    :try_start_0
    sget-object v0, Lcom/inmobi/ads/ai$1;->d:[I

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/ai$1;->d:[I

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_REPLAY:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/inmobi/ads/ai$1;->d:[I

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/inmobi/ads/ai$1;->d:[I

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_FULLSCREEN:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    .line 340
    :goto_3
    invoke-static {}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->values()[Lcom/inmobi/ads/AdUnit$AdTrackerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/ai$1;->c:[I

    :try_start_4
    sget-object v0, Lcom/inmobi/ads/ai$1;->c:[I

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_NONE:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/inmobi/ads/ai$1;->c:[I

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_MOAT:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    .line 225
    :goto_5
    invoke-static {}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->values()[Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/ai$1;->b:[I

    :try_start_6
    sget-object v0, Lcom/inmobi/ads/ai$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_PORTRAIT:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/inmobi/ads/ai$1;->b:[I

    sget-object v1, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_LANDSCAPE:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    .line 205
    :goto_7
    invoke-static {}, Lcom/inmobi/ads/AdContainer$EventType;->values()[Lcom/inmobi/ads/AdContainer$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/inmobi/ads/ai$1;->a:[I

    :try_start_8
    sget-object v0, Lcom/inmobi/ads/ai$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_UNKNOWN:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/inmobi/ads/ai$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_FILL_REQUEST:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/inmobi/ads/ai$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_LOADED:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/inmobi/ads/ai$1;->a:[I

    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    .line 225
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    .line 340
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    .line 703
    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
