.class Lcom/inmobi/ads/as$a;
.super Ljava/lang/Object;
.source "NativeV2TimerAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/inmobi/ads/NativeV2Asset;


# direct methods
.method public constructor <init>(JJLcom/inmobi/ads/NativeV2Asset;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/inmobi/ads/as$a;->a:J

    .line 65
    iput-wide p3, p0, Lcom/inmobi/ads/as$a;->b:J

    .line 66
    iput-object p5, p0, Lcom/inmobi/ads/as$a;->c:Lcom/inmobi/ads/NativeV2Asset;

    .line 67
    return-void
.end method


# virtual methods
.method public a()J
    .locals 10

    .prologue
    .line 71
    iget-wide v2, p0, Lcom/inmobi/ads/as$a;->a:J

    .line 72
    iget-object v0, p0, Lcom/inmobi/ads/as$a;->c:Lcom/inmobi/ads/NativeV2Asset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/as$a;->c:Lcom/inmobi/ads/NativeV2Asset;

    instance-of v0, v0, Lcom/inmobi/ads/av;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/inmobi/ads/as$a;->c:Lcom/inmobi/ads/NativeV2Asset;

    check-cast v0, Lcom/inmobi/ads/av;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 78
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 80
    long-to-double v2, v2

    iget-wide v6, p0, Lcom/inmobi/ads/as$a;->b:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    long-to-double v0, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 81
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 86
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
