.class abstract Lcom/inmobi/ads/ViewableAd$a;
.super Ljava/lang/Object;
.source "ViewableAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ViewableAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/inmobi/ads/ViewableAd$a;->a:Z

    if-eqz v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ViewableAd$a;->a:Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/inmobi/ads/ViewableAd$a;->a:Z

    return v0
.end method
