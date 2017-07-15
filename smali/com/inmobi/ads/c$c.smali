.class public final Lcom/inmobi/ads/c$c;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/c$c;->a:I

    .line 513
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/c$c;->b:I

    .line 514
    const/16 v0, 0x78

    iput v0, p0, Lcom/inmobi/ads/c$c;->c:I

    .line 515
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/inmobi/ads/c$c;->d:I

    .line 516
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/ads/c$c;->e:I

    .line 517
    const-wide/16 v0, 0x2a30

    iput-wide v0, p0, Lcom/inmobi/ads/c$c;->f:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$c;I)I
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/inmobi/ads/c$c;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$c;J)J
    .locals 1

    .prologue
    .line 511
    iput-wide p1, p0, Lcom/inmobi/ads/c$c;->f:J

    return-wide p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$c;I)I
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/inmobi/ads/c$c;->b:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/c$c;I)I
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/inmobi/ads/c$c;->c:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/c$c;I)I
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/inmobi/ads/c$c;->d:I

    return p1
.end method

.method static synthetic e(Lcom/inmobi/ads/c$c;I)I
    .locals 0

    .prologue
    .line 511
    iput p1, p0, Lcom/inmobi/ads/c$c;->e:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/inmobi/ads/c$c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/inmobi/ads/c$c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/inmobi/ads/c$c;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/inmobi/ads/c$c;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/inmobi/ads/c$c;->e:I

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 540
    iget-wide v0, p0, Lcom/inmobi/ads/c$c;->f:J

    return-wide v0
.end method
