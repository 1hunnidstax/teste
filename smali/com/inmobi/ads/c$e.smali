.class public final Lcom/inmobi/ads/c$e;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/c$e;->a:Z

    .line 674
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/inmobi/ads/c$e;->b:J

    .line 675
    const/4 v0, 0x5

    iput v0, p0, Lcom/inmobi/ads/c$e;->c:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$e;I)I
    .locals 0

    .prologue
    .line 672
    iput p1, p0, Lcom/inmobi/ads/c$e;->c:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$e;)J
    .locals 2

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/inmobi/ads/c$e;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/inmobi/ads/c$e;J)J
    .locals 1

    .prologue
    .line 672
    iput-wide p1, p0, Lcom/inmobi/ads/c$e;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$e;Z)Z
    .locals 0

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/inmobi/ads/c$e;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$e;)I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/inmobi/ads/c$e;->c:I

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Lcom/inmobi/ads/c$e;->b:J

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/inmobi/ads/c$e;->a:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/inmobi/ads/c$e;->c:I

    return v0
.end method
