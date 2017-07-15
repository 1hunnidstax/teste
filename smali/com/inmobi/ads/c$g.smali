.class public final Lcom/inmobi/ads/c$g;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/c$g;->a:I

    .line 693
    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lcom/inmobi/ads/c$g;->b:J

    .line 694
    const-wide/32 v0, 0x1e00000

    iput-wide v0, p0, Lcom/inmobi/ads/c$g;->c:J

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/c$g;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$g;I)I
    .locals 0

    .prologue
    .line 691
    iput p1, p0, Lcom/inmobi/ads/c$g;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$g;J)J
    .locals 1

    .prologue
    .line 691
    iput-wide p1, p0, Lcom/inmobi/ads/c$g;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$g;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/inmobi/ads/c$g;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/c$g;)J
    .locals 2

    .prologue
    .line 691
    iget-wide v0, p0, Lcom/inmobi/ads/c$g;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/ads/c$g;J)J
    .locals 1

    .prologue
    .line 691
    iput-wide p1, p0, Lcom/inmobi/ads/c$g;->c:J

    return-wide p1
.end method

.method static synthetic c(Lcom/inmobi/ads/c$g;)I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/inmobi/ads/c$g;->a:I

    return v0
.end method

.method static synthetic d(Lcom/inmobi/ads/c$g;)J
    .locals 2

    .prologue
    .line 691
    iget-wide v0, p0, Lcom/inmobi/ads/c$g;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lcom/inmobi/ads/c$g;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 702
    iget-wide v0, p0, Lcom/inmobi/ads/c$g;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 706
    iget-wide v0, p0, Lcom/inmobi/ads/c$g;->c:J

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/inmobi/ads/c$g;->d:Ljava/util/ArrayList;

    return-object v0
.end method
