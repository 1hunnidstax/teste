.class final Lcom/inmobi/ads/aq;
.super Ljava/lang/Object;
.source "NativeV2ScrollableDataSourceFactory.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/inmobi/ads/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aq;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ap;
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    sget-object v1, Lcom/inmobi/ads/aq$1;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 31
    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    new-instance v0, Lcom/inmobi/ads/ad;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/ads/ad;-><init>(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae;)V

    goto :goto_0

    .line 25
    :pswitch_1
    :try_start_0
    new-instance v1, Lcom/inmobi/ads/NativeV2RecyclerViewAdapter;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/ads/NativeV2RecyclerViewAdapter;-><init>(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "Error rendering ad! RecyclerView not found. Please check if the recyclerview support library was included"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
