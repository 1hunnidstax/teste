.class final Lcom/inmobi/ads/ab$b;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(IJLcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput p1, p0, Lcom/inmobi/ads/ab$b;->a:I

    .line 461
    iput-wide p2, p0, Lcom/inmobi/ads/ab$b;->b:J

    .line 462
    iput-object p4, p0, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    .line 463
    return-void
.end method
