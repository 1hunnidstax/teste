.class public final Lcom/inmobi/ads/c$d;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    const-wide/32 v0, 0x69780

    iput-wide v0, p0, Lcom/inmobi/ads/c$d;->a:J

    .line 597
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/c$d;->b:I

    .line 598
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/c$d;->c:I

    .line 599
    const-string v0, "https://i.l.inmobicdn.net/sdk/sdk/500/android/mraid.js"

    iput-object v0, p0, Lcom/inmobi/ads/c$d;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$d;I)I
    .locals 0

    .prologue
    .line 595
    iput p1, p0, Lcom/inmobi/ads/c$d;->b:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$d;J)J
    .locals 1

    .prologue
    .line 595
    iput-wide p1, p0, Lcom/inmobi/ads/c$d;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/inmobi/ads/c$d;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$d;I)I
    .locals 0

    .prologue
    .line 595
    iput p1, p0, Lcom/inmobi/ads/c$d;->c:I

    return p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/inmobi/ads/c$d;->a:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/inmobi/ads/c$d;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/inmobi/ads/c$d;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/inmobi/ads/c$d;->d:Ljava/lang/String;

    return-object v0
.end method
