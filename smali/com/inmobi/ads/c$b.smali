.class final Lcom/inmobi/ads/c$b;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/c$b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$b;)I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/inmobi/ads/c$b;->a:I

    return v0
.end method

.method static synthetic a(Lcom/inmobi/ads/c$b;I)I
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lcom/inmobi/ads/c$b;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$b;J)J
    .locals 1

    .prologue
    .line 480
    iput-wide p1, p0, Lcom/inmobi/ads/c$b;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$b;)I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/inmobi/ads/c$b;->b:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/c$b;I)I
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lcom/inmobi/ads/c$b;->b:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/c$b;)I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/inmobi/ads/c$b;->c:I

    return v0
.end method

.method static synthetic c(Lcom/inmobi/ads/c$b;I)I
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lcom/inmobi/ads/c$b;->c:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/c$b;)J
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/inmobi/ads/c$b;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 487
    iget v0, p0, Lcom/inmobi/ads/c$b;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/c$b;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/c$b;->c:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/inmobi/ads/c$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/inmobi/ads/c$b;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/inmobi/ads/c$b;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/inmobi/ads/c$b;->c:I

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/inmobi/ads/c$b;->d:J

    return-wide v0
.end method
