.class public final Lcom/inmobi/ads/c$a;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/c$a;->a:I

    .line 716
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/c$a;->b:I

    .line 717
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/ads/c$a;->c:I

    .line 718
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/inmobi/ads/c$a;->d:J

    .line 719
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/inmobi/ads/c$a;->e:J

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$a;I)I
    .locals 0

    .prologue
    .line 714
    iput p1, p0, Lcom/inmobi/ads/c$a;->b:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$a;J)J
    .locals 1

    .prologue
    .line 714
    iput-wide p1, p0, Lcom/inmobi/ads/c$a;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$a;I)I
    .locals 0

    .prologue
    .line 714
    iput p1, p0, Lcom/inmobi/ads/c$a;->a:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$a;J)J
    .locals 1

    .prologue
    .line 714
    iput-wide p1, p0, Lcom/inmobi/ads/c$a;->e:J

    return-wide p1
.end method

.method static synthetic c(Lcom/inmobi/ads/c$a;I)I
    .locals 0

    .prologue
    .line 714
    iput p1, p0, Lcom/inmobi/ads/c$a;->c:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/inmobi/ads/c$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/inmobi/ads/c$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/inmobi/ads/c$a;->c:I

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 734
    iget-wide v0, p0, Lcom/inmobi/ads/c$a;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/inmobi/ads/c$a;->d:J

    return-wide v0
.end method
