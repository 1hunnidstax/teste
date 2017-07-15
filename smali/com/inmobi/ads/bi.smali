.class public Lcom/inmobi/ads/bi;
.super Ljava/lang/Object;
.source "VastMediaFile.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:D


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/inmobi/ads/bi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/inmobi/ads/bi;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/inmobi/ads/bi;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/inmobi/ads/bi;->c:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/inmobi/ads/bi;->d:I

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/bi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/inmobi/ads/bi;->e:D

    .line 39
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/inmobi/ads/bi;->d:I

    return v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/inmobi/ads/bi;->e:D

    return-wide v0
.end method
