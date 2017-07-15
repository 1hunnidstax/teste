.class public final Lcom/inmobi/ads/c$h;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x1

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput v2, p0, Lcom/inmobi/ads/c$h;->a:I

    .line 625
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/ads/c$h;->b:I

    .line 626
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/ads/c$h;->c:I

    .line 627
    const/16 v0, 0xfa

    iput v0, p0, Lcom/inmobi/ads/c$h;->d:I

    .line 629
    iput v2, p0, Lcom/inmobi/ads/c$h;->e:I

    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/c$h;->f:I

    .line 632
    iput-boolean v1, p0, Lcom/inmobi/ads/c$h;->g:Z

    .line 633
    iput-boolean v1, p0, Lcom/inmobi/ads/c$h;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/c$h;I)I
    .locals 0

    .prologue
    .line 618
    iput p1, p0, Lcom/inmobi/ads/c$h;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/c$h;Z)Z
    .locals 0

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/inmobi/ads/c$h;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$h;I)I
    .locals 0

    .prologue
    .line 618
    iput p1, p0, Lcom/inmobi/ads/c$h;->b:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/c$h;Z)Z
    .locals 0

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/inmobi/ads/c$h;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/c$h;I)I
    .locals 0

    .prologue
    .line 618
    iput p1, p0, Lcom/inmobi/ads/c$h;->c:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/c$h;I)I
    .locals 0

    .prologue
    .line 618
    iput p1, p0, Lcom/inmobi/ads/c$h;->d:I

    return p1
.end method

.method static synthetic e(Lcom/inmobi/ads/c$h;I)I
    .locals 0

    .prologue
    .line 618
    iput p1, p0, Lcom/inmobi/ads/c$h;->e:I

    return p1
.end method

.method static synthetic f(Lcom/inmobi/ads/c$h;I)I
    .locals 0

    .prologue
    .line 618
    iput p1, p0, Lcom/inmobi/ads/c$h;->f:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/inmobi/ads/c$h;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 652
    iput p1, p0, Lcom/inmobi/ads/c$h;->f:I

    .line 653
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/inmobi/ads/c$h;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/inmobi/ads/c$h;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/inmobi/ads/c$h;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/inmobi/ads/c$h;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/inmobi/ads/c$h;->d:I

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/inmobi/ads/c$h;->g:Z

    return v0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/inmobi/ads/c$h;->h:Z

    return v0
.end method
